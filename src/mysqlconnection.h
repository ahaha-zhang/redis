//
//  mysqlconnection.h
//  debug
//
//  Created by zhangyanjun on 2019/6/17.
//  Copyright © 2019 zhangyanjun. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <signal.h>

#include "mysql.h"
#include "ae.h"

enum MDB_ASYNC_ST { // MariaDB Async State Machine
    ASYNC_CONNECT_START,
    ASYNC_CONNECT_CONT,
    ASYNC_CONNECT_END,
    ASYNC_CONNECT_SUCCESSFUL,
    ASYNC_CONNECT_FAILED,
    ASYNC_CONNECT_TIMEOUT,
    ASYNC_PING_START,
    ASYNC_PING_CONT,
    ASYNC_PING_END,
    ASYNC_PING_SUCCESSFUL,
    ASYNC_PING_FAILED,
    ASYNC_PING_TIMEOUT,
    ASYNC_QUERY_START,
    ASYNC_QUERY_CONT,
    ASYNC_QUERY_END,
    ASYNC_NEXT_RESULT_START,
    ASYNC_NEXT_RESULT_CONT,
    ASYNC_NEXT_RESULT_END,
    ASYNC_STORE_RESULT_START,
    ASYNC_STORE_RESULT_CONT,
    ASYNC_USE_RESULT_START,
    ASYNC_USE_RESULT_CONT,
    
    ASYNC_IDLE
};

typedef struct mysqlUserInfo{
    char *username;
    char *password;
    char *schema;
}mysqlUserInfo;

typedef struct mysqlAsyncConnection{
    MYSQL mysql;
    MYSQL *ret_mysql;
    MYSQL_RES *mysql_result;
    MYSQL_ROW mysql_row;
    mysqlUserInfo *userinfo;
    int err;
    char *errstr;       //mysql_error()
    
    int fd;             //mysql_get_socket()
    
    struct {
        char *ip;
        int port;
    } addr;
    int async_fetch_row_start;      //1:YES 0:NO
    enum MDB_ASYNC_ST async_state_machine;    // Async state machine,mariadb async client status
    
}mysqlAsyncConnection;

mysqlAsyncConnection* mysqlAsyncConnectionInit(mysqlUserInfo *,char* ,int );
int mysqlAsyncConnectionHandler(mysqlAsyncConnection*);
int mysqlAsyncClose(mysqlAsyncConnection*);
int mysqlAsyncPingHandler(mysqlAsyncConnection*);
int mysqlAsyncPublishHandler(mysqlAsyncConnection*);
int mysqlAsyncHandlerCallback(struct aeEventLoop *l,int fd,void *data,int mask);
