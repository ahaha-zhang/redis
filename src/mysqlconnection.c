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
#include <unistd.h>

#include "mysqlconnection.h"

static aeEventLoop *loop;

mysqlAsyncConnection* mysqlAsyncConnectionInit(mysqlUserInfo *userinfo,char* ip,int port){
    mysqlAsyncConnection* mc=(mysqlAsyncConnection*)malloc(sizeof(mysqlAsyncConnection));
    if (mc==NULL){
        return NULL;
    }
    mysql_init(&mc->mysql);
    mysql_options(&mc->mysql, MYSQL_OPT_NONBLOCK, 0);
    mc->async_state_machine=ASYNC_CONNECT_START;
    mc->addr.ip=ip;
    mc->addr.port=port;
    mc->userinfo=userinfo;
    return mc;
}

int mysqlAsyncConnectionHandler(mysqlAsyncConnection* mc){
    printf("mysqlAsyncConnectionHandlering\n");
    int status;
    if (mc->async_state_machine!=ASYNC_CONNECT_START) return 0;
    mysql_real_connect_start(&mc->ret_mysql,
                            &mc->mysql,
                            mc->addr.ip,
                            mc->userinfo->username,
                            mc->userinfo->password,
                            mc->userinfo->schema,
                            mc->addr.port,
                            NULL,
                            0);
    mc->fd=mysql_get_socket(&mc->mysql);
    //printf("*mc:%p\n",mc);
    aeCreateFileEvent(loop,mc->fd,AE_READABLE,mysqlAsyncHandlerCallback,(void *)mc);
    printf("mysqlAsyncConnectionHandlered\n");
    return status;
}

/*
 work flow:
 check mc->async_state_machine
 call async api
 add file event
 set status
 return status
 */
int mysqlAsyncHandlerCallback(struct aeEventLoop *loop,int fd,void *data,int mask){
    printf("mysqlAsyncHandlerCallbacking\n");
    //printf("*data:%p",data);
    mysqlAsyncConnection* mc;
    mc=(mysqlAsyncConnection*)data;
    mysql_real_connect_cont(&mc->ret_mysql, &mc->mysql, 1);
    aeDeleteFileEvent(loop,fd,mask);
    printf("mysqlAsyncHandlerCallbacked\n");
}

void file_cb(struct aeEventLoop *l,int fd,void *data,int mask)
{
    char buf[51] ={0};
    read(fd,buf,51);
    printf("I'm file_cb ,here [EventLoop: %p],[fd : %d],[data: %p],[mask: %d] \n",l,fd,data,mask);
    printf("get %s",buf);
}

int time_cb(struct aeEventLoop *l,long long id,void *data)
{
    printf("now is %ld\n",time(NULL));
    printf("I'm time_cb,here [EventLoop: %p],[id : %lld],[data: %p] \n",l,id,data);
    return 3*1000;
}

void fin_cb(struct aeEventLoop *l,void *data)
{
    puts("call the unknow final function \n");
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

    char *msg = "Here std say:";
    char *user_data = malloc(50*sizeof(char));
    if(! user_data)
        exit(0);
    memset(user_data,'\0',50);
    memcpy(user_data,msg,sizeof(msg));

    int res;

    mysqlAsyncConnectionHandler(mc);
    //res = aeCreateFileEvent(loop,mc->fd,AE_READABLE,file_cb,user_data);
    //mysqlAeAttach(loop, mc);
    printf("mc->fd:%d\n",mc->fd);

    res = aeCreateTimeEvent(loop,3*1000,time_cb,NULL,fin_cb);
    printf("create time event is ok? [%d]\n",!res);
    
    printf("attached loop\n");
    
    aeMain(loop);
    return 0;
}



/*
gcc -o mysqltest mysqlconnection.c ae.c zmalloc.c -I../include -I../deps/mariadb-connector-c/include -I../deps/mariadb-connector-c/include/mysql -I/usr/local/opt/openssl/include -L/usr/local/opt/openssl/lib -L../deps/mariadb-connector-c/libmariadb/ -lmariadb -liconv -lssl -lcrypto -g
 */

