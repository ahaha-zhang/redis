//
//  mysqlconnection.c
//  debug
//
//  Created by zhangyanjun on 2019/6/17.
//  Copyright © 2019 zhangyanjun. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <signal.h>

#include "mysqlconnection.h"

#define _MYSQL_EL_ADD_READ(ctx) do { \
if ((ctx)->ev.addRead) (ctx)->ev.addRead((ctx)->ev.data); \
} while(0)
#define _MYSQL_EL_DEL_READ(ctx) do { \
if ((ctx)->ev.delRead) (ctx)->ev.delRead((ctx)->ev.data); \
} while(0)
#define _MYSQL_EL_ADD_WRITE(ctx) do { \
if ((ctx)->ev.addWrite) (ctx)->ev.addWrite((ctx)->ev.data); \
} while(0)
#define _MYSQL_EL_DEL_WRITE(ctx) do { \
if ((ctx)->ev.delWrite) (ctx)->ev.delWrite((ctx)->ev.data); \
} while(0)
#define _MYSQL_EL_CLEANUP(ctx) do { \
if ((ctx)->ev.cleanup) (ctx)->ev.cleanup((ctx)->ev.data); \
} while(0);

static aeEventLoop *loop;

void mysqlAsyncHandler(mysqlAsyncConnection *mc){
    printf("mysqlAsyncHandlered\n");
}

mysqlAsyncConnection* mysqlAsyncConnectionInit(mysqlUserInfo *userinfo,char* ip,int port){
    mysqlAsyncConnection* mc=(mysqlAsyncConnection*)malloc(sizeof(mysqlAsyncConnection));
    if (mc==NULL){
        printf("Can't get memory!\n");
        return NULL;
    }
    mysql_init(&mc->mysql);
    mysql_options(&mc->mysql, MYSQL_OPT_NONBLOCK, 0);
    mc->fd=mysql_get_socket(&mc->mysql);
    mc->ev.data = NULL;
    mc->ev.addRead = NULL;
    mc->ev.delRead = NULL;
    mc->ev.addWrite = NULL;
    mc->ev.delWrite = NULL;
    mc->ev.cleanup = NULL;
    mc->async_state_machine=ASYNC_CONNECT_START;
    mc->addr.ip=ip;
    mc->addr.port=port;
    mc->userinfo=userinfo;
    return mc;
}

int mysqlAsyncConnectionHandler(mysqlAsyncConnection* mc){
    if (mc->async_state_machine!=ASYNC_CONNECT_START)
        return 0;
    int status;
    
    status=mysql_real_connect_start(&mc->ret_mysql,
                                    &mc->mysql,
                                    mc->addr.ip,
                                    mc->userinfo->username,
                                    mc->userinfo->password,
                                    mc->userinfo->schema,
                                    mc->addr.port,
                                    NULL,
                                    0);
    if(status){
        mc->async_state_machine=ASYNC_CONNECT_CONT;
        status=mysql_real_connect_cont(&mc->ret_mysql, &mc->mysql, status);
    }
    return status;
}

void mysqlAeReadEvent(aeEventLoop *el, int fd, void *privdata, int mask) {
    ((void)el); ((void)fd); ((void)mask);
    
    mysqlAeEvents *e=(mysqlAeEvents*)privdata;
    mysqlAsyncHandler(e->mc);
}

void mysqlAeWriteEvent(aeEventLoop *el, int fd, void *privdata, int mask) {
    ((void)el); ((void)fd); ((void)mask);
    
    mysqlAeEvents *e=(mysqlAeEvents*)privdata;
    mysqlAsyncHandler(e->mc);
}

void mysqlAeAddRead(void *privdata) {
    mysqlAeEvents *e=(mysqlAeEvents*)privdata;
    aeEventLoop *loop=e->loop;
    if (!e->reading) {
        e->reading=1;
        aeCreateFileEvent(loop,e->fd,AE_READABLE,mysqlAeReadEvent,e);
    }
}

void mysqlAeDelRead(void *privdata) {
    mysqlAeEvents *e=(mysqlAeEvents*)privdata;
    aeEventLoop *loop=e->loop;
    if (e->reading) {
        e->reading=0;
        aeDeleteFileEvent(loop,e->fd,AE_READABLE);
    }
}

void mysqlAeAddWrite(void *privdata) {
    mysqlAeEvents *e=(mysqlAeEvents*)privdata;
    aeEventLoop *loop=e->loop;
    if (!e->writing) {
        e->writing=1;
        aeCreateFileEvent(loop,e->fd,AE_WRITABLE,mysqlAeWriteEvent,e);
    }
}

void mysqlAeDelWrite(void *privdata) {
    mysqlAeEvents *e=(mysqlAeEvents*)privdata;
    aeEventLoop *loop=e->loop;
    if (e->writing) {
        e->writing=0;
        aeDeleteFileEvent(loop,e->fd,AE_WRITABLE);
    }
}

void mysqlAeCleanup(void *privdata) {
    mysqlAeEvents *e=(mysqlAeEvents*)privdata;
    mysqlAeDelRead(privdata);
    mysqlAeDelWrite(privdata);
    free(e);
}

int mysqlAeAttach(aeEventLoop *loop, mysqlAsyncConnection *mc) {
    mysqlAeEvents *e;
    
    /* Nothing should be attached when something is already attached */
    if (mc->ev.data != NULL)
        return -1;
    
    /* Create container for context and r/w events */
    e=(mysqlAeEvents*)malloc(sizeof(*e));
    e->mc=mc;
    e->loop=loop;
    e->fd=mc->fd;
    e->reading=e->writing=0;
    
    /* Register functions to start/stop listening for events */
    mc->ev.addRead=mysqlAeAddRead;
    mc->ev.delRead=mysqlAeDelRead;
    mc->ev.addWrite=mysqlAeAddWrite;
    mc->ev.delWrite=mysqlAeDelWrite;
    mc->ev.cleanup=mysqlAeCleanup;
    mc->ev.data=e;
    
    return 0;
}

int main (int argc, char **argv) {
    signal(SIGPIPE, SIG_IGN);

    printf("started\n");
    mysqlUserInfo *userinfo;
    userinfo=(mysqlUserInfo*)malloc(sizeof(mysqlUserInfo));
    userinfo->username="us_zhangyanjun";
    userinfo->password="123456";
    userinfo->schema="mysql";
    
    mysqlAsyncConnection* mc=mysqlAsyncConnectionInit(userinfo,"127.0.0.1", 3306);
    
    loop=aeCreateEventLoop(64);
    printf("created event loop\n");

    mysqlAeAttach(loop, mc);
    printf("attached loop\n");
    //aeCreateFileEvent(loop,mc->fd,AE_READABLE,mysqlAsyncHandler,mc->ev.data);
    mysqlAsyncConnectionHandler(mc);
    
    aeMain(loop);
    return 0;
}

/*
gcc -o mysqltest mysqlconnection.c ae.c zmalloc.c -I../include -I../deps/mariadb-connector-c/include -I../deps/mariadb-connector-c/include/mysql -I/usr/local/opt/openssl/include -L/usr/local/opt/openssl/lib -L../deps/mariadb-connector-c/libmariadb/ -lmariadb -liconv -lssl -lcrypto -g
 */

