# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client

# Include any dependencies generated for this target.
include libmariadb/CMakeFiles/libmariadb.dir/depend.make

# Include the progress variables for this target.
include libmariadb/CMakeFiles/libmariadb.dir/progress.make

# Include the compile flags for this target's objects.
include libmariadb/CMakeFiles/libmariadb.dir/flags.make

# Object files for target libmariadb
libmariadb_OBJECTS =

# External object files for target libmariadb
libmariadb_EXTERNAL_OBJECTS = \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/__/plugins/pvio/pvio_socket.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/__/plugins/auth/my_auth.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/__/plugins/auth/old_password.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/ma_array.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/ma_charset.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/ma_hash.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/ma_net.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/mariadb_charset.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/ma_time.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/ma_default.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/ma_errmsg.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/mariadb_lib.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/ma_list.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/ma_pvio.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/ma_tls.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/ma_alloc.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/ma_compress.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/ma_init.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/ma_password.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/ma_ll2str.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/ma_sha1.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/mariadb_stmt.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/ma_loaddata.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/ma_stmt_codec.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/ma_string.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/ma_dtoa.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/ma_client_plugin.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/ma_io.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/secure/openssl.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/adler32.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/compress.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/crc32.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/deflate.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/gzclose.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/gzlib.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/gzread.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/gzwrite.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/infback.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/inffast.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/inflate.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/inftrees.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/trees.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/uncompr.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/zutil.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/mariadb_dyncol.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/mariadb_async.c.o" \
"/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/mariadb_obj.dir/ma_context.c.o"

libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/__/plugins/pvio/pvio_socket.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/__/plugins/auth/my_auth.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/__/plugins/auth/old_password.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/ma_array.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/ma_charset.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/ma_hash.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/ma_net.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/mariadb_charset.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/ma_time.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/ma_default.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/ma_errmsg.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/mariadb_lib.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/ma_list.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/ma_pvio.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/ma_tls.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/ma_alloc.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/ma_compress.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/ma_init.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/ma_password.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/ma_ll2str.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/ma_sha1.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/mariadb_stmt.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/ma_loaddata.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/ma_stmt_codec.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/ma_string.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/ma_dtoa.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/ma_client_plugin.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/ma_io.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/secure/openssl.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/adler32.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/compress.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/crc32.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/deflate.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/gzclose.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/gzlib.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/gzread.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/gzwrite.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/infback.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/inffast.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/inflate.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/inftrees.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/trees.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/uncompr.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/__/zlib/zutil.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/mariadb_dyncol.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/mariadb_async.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/mariadb_obj.dir/ma_context.c.o
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/libmariadb.dir/build.make
libmariadb/libmariadb.3.dylib: /usr/lib/libiconv.dylib
libmariadb/libmariadb.3.dylib: /Users/zhangyanjun/Desktop/test/proxysql/deps/libssl/openssl/libssl.dylib
libmariadb/libmariadb.3.dylib: /Users/zhangyanjun/Desktop/test/proxysql/deps/libssl/openssl/libcrypto.dylib
libmariadb/libmariadb.3.dylib: libmariadb/mariadbclient.def
libmariadb/libmariadb.3.dylib: libmariadb/CMakeFiles/libmariadb.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking C shared library libmariadb.dylib"
	cd /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libmariadb.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb && $(CMAKE_COMMAND) -E cmake_symlink_library libmariadb.3.dylib libmariadb.3.dylib libmariadb.dylib

libmariadb/libmariadb.dylib: libmariadb/libmariadb.3.dylib
	@$(CMAKE_COMMAND) -E touch_nocreate libmariadb/libmariadb.dylib

# Rule to build all files generated by this target.
libmariadb/CMakeFiles/libmariadb.dir/build: libmariadb/libmariadb.dylib

.PHONY : libmariadb/CMakeFiles/libmariadb.dir/build

libmariadb/CMakeFiles/libmariadb.dir/requires:

.PHONY : libmariadb/CMakeFiles/libmariadb.dir/requires

libmariadb/CMakeFiles/libmariadb.dir/clean:
	cd /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb && $(CMAKE_COMMAND) -P CMakeFiles/libmariadb.dir/cmake_clean.cmake
.PHONY : libmariadb/CMakeFiles/libmariadb.dir/clean

libmariadb/CMakeFiles/libmariadb.dir/depend:
	cd /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/libmariadb/CMakeFiles/libmariadb.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libmariadb/CMakeFiles/libmariadb.dir/depend

