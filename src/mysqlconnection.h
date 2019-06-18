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
    
    int async_fetch_row_start;
    enum MDB_ASYNC_ST async_state_machine;    // Async state machine

    struct {
        void *data;
        
        /* Hooks that are called when the library expects to start
         * reading/writing. These functions should be idempotent. */
        void (*addRead)(void *privdata);
        void (*delRead)(void *privdata);
        void (*addWrite)(void *privdata);
        void (*delWrite)(void *privdata);
        void (*cleanup)(void *privdata);
    } ev;

}mysqlAsyncConnection;

mysqlAsyncConnection* mysqlAsyncConnectionInit(mysqlUserInfo *,char* ,int );
int mysqlAsyncConnectionHandler(mysqlAsyncConnection*);
void mysqlAsyncConnectionCallback();
void mysqlAsyncClose(mysqlAsyncConnection*);
void mysqlAsyncPingHandler(mysqlAsyncConnection*);
void mysqlAsyncPingCallback();
void mysqlAsyncQueryHandler(mysqlAsyncConnection*);
void mysqlAsyncQueryCallback();
void mysqlAsyncFetchRowHandler(mysqlAsyncConnection*);
void mysqlAsyncFetchRowCallback();
void mysqlAsyncHandler(mysqlAsyncConnection *);

//adapter for ae event loop library
typedef struct mysqlAeEvents {
    mysqlAsyncConnection *mc;
    aeEventLoop *loop;
    int fd;
    int reading, writing;
}mysqlAeEvents;

void mysqlAeReadEvent(aeEventLoop *el, int fd, void *privdata, int mask);
void mysqlAeWriteEvent(aeEventLoop *el, int fd, void *privdata, int mask);
void mysqlAeAddRead(void *privdata);
void mysqlAeDelRead(void *privdata);
void mysqlAeAddWrite(void *privdata);
void mysqlAeDelWrite(void *privdata);
void mysqlAeCleanup(void *privdata);
static int mysqlAeAttach(aeEventLoop *, mysqlAsyncConnection *);

