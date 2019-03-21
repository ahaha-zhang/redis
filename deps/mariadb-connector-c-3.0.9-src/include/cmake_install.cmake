# Install script for directory: /Users/zhangyanjun/Desktop/test/mariadb-connector-c-3.0.9-src/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mariadb" TYPE FILE FILES
    "/Users/zhangyanjun/Desktop/test/mariadb-connector-c-3.0.9-src/include/mariadb_com.h"
    "/Users/zhangyanjun/Desktop/test/mariadb-connector-c-3.0.9-src/include/mysql.h"
    "/Users/zhangyanjun/Desktop/test/mariadb-connector-c-3.0.9-src/include/mariadb_stmt.h"
    "/Users/zhangyanjun/Desktop/test/mariadb-connector-c-3.0.9-src/include/ma_pvio.h"
    "/Users/zhangyanjun/Desktop/test/mariadb-connector-c-3.0.9-src/include/ma_tls.h"
    "/Users/zhangyanjun/Desktop/test/mariadb-connector-c-3.0.9-src/include/mariadb_version.h"
    "/Users/zhangyanjun/Desktop/test/mariadb-connector-c-3.0.9-src/include/ma_list.h"
    "/Users/zhangyanjun/Desktop/test/mariadb-connector-c-3.0.9-src/include/errmsg.h"
    "/Users/zhangyanjun/Desktop/test/mariadb-connector-c-3.0.9-src/include/mariadb_dyncol.h"
    "/Users/zhangyanjun/Desktop/test/mariadb-connector-c-3.0.9-src/include/mariadb_ctype.h"
    "/Users/zhangyanjun/Desktop/test/mariadb-connector-c-3.0.9-src/include/mysqld_error.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mariadb/mysql" TYPE FILE FILES
    "/Users/zhangyanjun/Desktop/test/mariadb-connector-c-3.0.9-src/include/mysql/client_plugin.h"
    "/Users/zhangyanjun/Desktop/test/mariadb-connector-c-3.0.9-src/include/mysql/plugin_auth_common.h"
    "/Users/zhangyanjun/Desktop/test/mariadb-connector-c-3.0.9-src/include/mysql/plugin_auth.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mariadb/mariadb" TYPE FILE FILES "/Users/zhangyanjun/Desktop/test/mariadb-connector-c-3.0.9-src/include/mariadb/ma_io.h")
endif()

