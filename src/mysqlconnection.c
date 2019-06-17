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

static aeEventLoop *loop;

void mysqlAsyncHandler(mysqlAsyncConnection *mc){
    
}

mysqlAsyncConnection* mysqlAsyncConnectionInit(mysqlUserInfo *userinfo,char* ip,int port){
    mysqlAsyncConnection* mc=(mysqlAsyncConnection*)malloc(sizeof(mysqlAsyncConnection));
    mysql_init(&mc->mysql);
    mc->fd=mysql_get_socket(&mc->mysql);
    mysql_options(&mc->mysql, MYSQL_OPT_NONBLOCK, 0);
}

void mysqlAeReadEvent(aeEventLoop *el, int fd, void *privdata, int mask) {
    ((void)el); ((void)fd); ((void)mask);
    
    mysqlAeEvents *e = (mysqlAeEvents*)privdata;
    mysqlAsyncHandler(e->mc);
}

void mysqlAeWriteEvent(aeEventLoop *el, int fd, void *privdata, int mask) {
    ((void)el); ((void)fd); ((void)mask);
    
    mysqlAeEvents *e = (mysqlAeEvents*)privdata;
    mysqlAsyncHandler(e->mc);
}

void mysqlAeAddRead(void *privdata) {
    mysqlAeEvents *e = (mysqlAeEvents*)privdata;
    aeEventLoop *loop = e->loop;
    if (!e->reading) {
        e->reading = 1;
        aeCreateFileEvent(loop,e->fd,AE_READABLE,mysqlAeReadEvent,e);
    }
}

void mysqlAeDelRead(void *privdata) {
    mysqlAeEvents *e = (mysqlAeEvents*)privdata;
    aeEventLoop *loop = e->loop;
    if (e->reading) {
        e->reading = 0;
        aeDeleteFileEvent(loop,e->fd,AE_READABLE);
    }
}

void mysqlAeAddWrite(void *privdata) {
    mysqlAeEvents *e = (mysqlAeEvents*)privdata;
    aeEventLoop *loop = e->loop;
    if (!e->writing) {
        e->writing = 1;
        aeCreateFileEvent(loop,e->fd,AE_WRITABLE,mysqlAeWriteEvent,e);
    }
}

void mysqlAeDelWrite(void *privdata) {
    mysqlAeEvents *e = (mysqlAeEvents*)privdata;
    aeEventLoop *loop = e->loop;
    if (e->writing) {
        e->writing = 0;
        aeDeleteFileEvent(loop,e->fd,AE_WRITABLE);
    }
}

void mysqlAeCleanup(void *privdata) {
    mysqlAeEvents *e = (mysqlAeEvents*)privdata;
    mysqlAeDelRead(privdata);
    mysqlAeDelWrite(privdata);
    zfree(e);
}

int mysqlAeAttach(aeEventLoop *loop, mysqlAsyncConnection *mc) {
    mysqlAeEvents *e;
    
    /* Nothing should be attached when something is already attached */
    if (mc->ev.data != NULL)
        return -1;
    
    /* Create container for context and r/w events */
    e = (mysqlAeEvents*)zmalloc(sizeof(*e));
    e->mc = mc;
    e->loop = loop;
    e->fd = mc->fd;
    e->reading = e->writing = 0;
    
    /* Register functions to start/stop listening for events */
    mc->ev.addRead = mysqlAeAddRead;
    mc->ev.delRead = mysqlAeDelRead;
    mc->ev.addWrite = mysqlAeAddWrite;
    mc->ev.delWrite = mysqlAeDelWrite;
    mc->ev.cleanup = mysqlAeCleanup;
    mc->ev.data = e;
    
    return 0;
}

int main (int argc, char **argv) {
    signal(SIGPIPE, SIG_IGN);
    
    mysqlUserInfo *userinfo;
    userinfo=(mysqlUserInfo*)malloc(sizeof(mysqlUserInfo));
    userinfo->username="us_zhangyanjun";
    userinfo->password="123456";
    userinfo->schema="mysql";
    
    mysqlAsyncConnection *mc = mysqlAsyncConnectionInit(userinfo,"127.0.0.1", 3306);
    
    loop=aeCreateEventLoop(64);
    mysqlAeAttach(loop, mc);

    aeMain(loop);
    return 0;
}

/*
gcc -o mysqltest mysqlconnection.c ae.c zmalloc.c -I../include -I../deps/mariadb-connector-c/include -I../deps/mariadb-connector-c/include/mysql -I/usr/local/opt/openssl/include -L/usr/local/opt/openssl/lib -L../deps/mariadb-connector-c/libmariadb/ -lmariadb -liconv -lssl -lcrypto
 */

