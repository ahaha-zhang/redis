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
include unittest/libmariadb/CMakeFiles/fetch.dir/depend.make

# Include the progress variables for this target.
include unittest/libmariadb/CMakeFiles/fetch.dir/progress.make

# Include the compile flags for this target's objects.
include unittest/libmariadb/CMakeFiles/fetch.dir/flags.make

unittest/libmariadb/CMakeFiles/fetch.dir/fetch.c.o: unittest/libmariadb/CMakeFiles/fetch.dir/flags.make
unittest/libmariadb/CMakeFiles/fetch.dir/fetch.c.o: unittest/libmariadb/fetch.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object unittest/libmariadb/CMakeFiles/fetch.dir/fetch.c.o"
	cd /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/unittest/libmariadb && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/fetch.dir/fetch.c.o   -c /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/unittest/libmariadb/fetch.c

unittest/libmariadb/CMakeFiles/fetch.dir/fetch.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fetch.dir/fetch.c.i"
	cd /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/unittest/libmariadb && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/unittest/libmariadb/fetch.c > CMakeFiles/fetch.dir/fetch.c.i

unittest/libmariadb/CMakeFiles/fetch.dir/fetch.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fetch.dir/fetch.c.s"
	cd /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/unittest/libmariadb && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/unittest/libmariadb/fetch.c -o CMakeFiles/fetch.dir/fetch.c.s

unittest/libmariadb/CMakeFiles/fetch.dir/fetch.c.o.requires:

.PHONY : unittest/libmariadb/CMakeFiles/fetch.dir/fetch.c.o.requires

unittest/libmariadb/CMakeFiles/fetch.dir/fetch.c.o.provides: unittest/libmariadb/CMakeFiles/fetch.dir/fetch.c.o.requires
	$(MAKE) -f unittest/libmariadb/CMakeFiles/fetch.dir/build.make unittest/libmariadb/CMakeFiles/fetch.dir/fetch.c.o.provides.build
.PHONY : unittest/libmariadb/CMakeFiles/fetch.dir/fetch.c.o.provides

unittest/libmariadb/CMakeFiles/fetch.dir/fetch.c.o.provides.build: unittest/libmariadb/CMakeFiles/fetch.dir/fetch.c.o


# Object files for target fetch
fetch_OBJECTS = \
"CMakeFiles/fetch.dir/fetch.c.o"

# External object files for target fetch
fetch_EXTERNAL_OBJECTS =

unittest/libmariadb/fetch: unittest/libmariadb/CMakeFiles/fetch.dir/fetch.c.o
unittest/libmariadb/fetch: unittest/libmariadb/CMakeFiles/fetch.dir/build.make
unittest/libmariadb/fetch: unittest/mytap/libcctap.a
unittest/libmariadb/fetch: unittest/libmariadb/libma_getopt.a
unittest/libmariadb/fetch: libmariadb/libmariadbclient.a
unittest/libmariadb/fetch: /usr/lib/libiconv.dylib
unittest/libmariadb/fetch: /Users/zhangyanjun/Desktop/test/proxysql/deps/libssl/openssl/libssl.dylib
unittest/libmariadb/fetch: /Users/zhangyanjun/Desktop/test/proxysql/deps/libssl/openssl/libcrypto.dylib
unittest/libmariadb/fetch: unittest/libmariadb/CMakeFiles/fetch.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable fetch"
	cd /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/unittest/libmariadb && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fetch.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
unittest/libmariadb/CMakeFiles/fetch.dir/build: unittest/libmariadb/fetch

.PHONY : unittest/libmariadb/CMakeFiles/fetch.dir/build

unittest/libmariadb/CMakeFiles/fetch.dir/requires: unittest/libmariadb/CMakeFiles/fetch.dir/fetch.c.o.requires

.PHONY : unittest/libmariadb/CMakeFiles/fetch.dir/requires

unittest/libmariadb/CMakeFiles/fetch.dir/clean:
	cd /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/unittest/libmariadb && $(CMAKE_COMMAND) -P CMakeFiles/fetch.dir/cmake_clean.cmake
.PHONY : unittest/libmariadb/CMakeFiles/fetch.dir/clean

unittest/libmariadb/CMakeFiles/fetch.dir/depend:
	cd /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/unittest/libmariadb /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/unittest/libmariadb /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/unittest/libmariadb/CMakeFiles/fetch.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unittest/libmariadb/CMakeFiles/fetch.dir/depend

