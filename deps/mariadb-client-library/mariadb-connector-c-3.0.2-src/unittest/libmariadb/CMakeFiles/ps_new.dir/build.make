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
include unittest/libmariadb/CMakeFiles/ps_new.dir/depend.make

# Include the progress variables for this target.
include unittest/libmariadb/CMakeFiles/ps_new.dir/progress.make

# Include the compile flags for this target's objects.
include unittest/libmariadb/CMakeFiles/ps_new.dir/flags.make

unittest/libmariadb/CMakeFiles/ps_new.dir/ps_new.c.o: unittest/libmariadb/CMakeFiles/ps_new.dir/flags.make
unittest/libmariadb/CMakeFiles/ps_new.dir/ps_new.c.o: unittest/libmariadb/ps_new.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object unittest/libmariadb/CMakeFiles/ps_new.dir/ps_new.c.o"
	cd /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/unittest/libmariadb && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ps_new.dir/ps_new.c.o   -c /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/unittest/libmariadb/ps_new.c

unittest/libmariadb/CMakeFiles/ps_new.dir/ps_new.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ps_new.dir/ps_new.c.i"
	cd /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/unittest/libmariadb && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/unittest/libmariadb/ps_new.c > CMakeFiles/ps_new.dir/ps_new.c.i

unittest/libmariadb/CMakeFiles/ps_new.dir/ps_new.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ps_new.dir/ps_new.c.s"
	cd /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/unittest/libmariadb && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/unittest/libmariadb/ps_new.c -o CMakeFiles/ps_new.dir/ps_new.c.s

unittest/libmariadb/CMakeFiles/ps_new.dir/ps_new.c.o.requires:

.PHONY : unittest/libmariadb/CMakeFiles/ps_new.dir/ps_new.c.o.requires

unittest/libmariadb/CMakeFiles/ps_new.dir/ps_new.c.o.provides: unittest/libmariadb/CMakeFiles/ps_new.dir/ps_new.c.o.requires
	$(MAKE) -f unittest/libmariadb/CMakeFiles/ps_new.dir/build.make unittest/libmariadb/CMakeFiles/ps_new.dir/ps_new.c.o.provides.build
.PHONY : unittest/libmariadb/CMakeFiles/ps_new.dir/ps_new.c.o.provides

unittest/libmariadb/CMakeFiles/ps_new.dir/ps_new.c.o.provides.build: unittest/libmariadb/CMakeFiles/ps_new.dir/ps_new.c.o


# Object files for target ps_new
ps_new_OBJECTS = \
"CMakeFiles/ps_new.dir/ps_new.c.o"

# External object files for target ps_new
ps_new_EXTERNAL_OBJECTS =

unittest/libmariadb/ps_new: unittest/libmariadb/CMakeFiles/ps_new.dir/ps_new.c.o
unittest/libmariadb/ps_new: unittest/libmariadb/CMakeFiles/ps_new.dir/build.make
unittest/libmariadb/ps_new: unittest/mytap/libcctap.a
unittest/libmariadb/ps_new: unittest/libmariadb/libma_getopt.a
unittest/libmariadb/ps_new: libmariadb/libmariadbclient.a
unittest/libmariadb/ps_new: /usr/lib/libiconv.dylib
unittest/libmariadb/ps_new: /Users/zhangyanjun/Desktop/test/proxysql/deps/libssl/openssl/libssl.dylib
unittest/libmariadb/ps_new: /Users/zhangyanjun/Desktop/test/proxysql/deps/libssl/openssl/libcrypto.dylib
unittest/libmariadb/ps_new: unittest/libmariadb/CMakeFiles/ps_new.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ps_new"
	cd /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/unittest/libmariadb && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ps_new.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
unittest/libmariadb/CMakeFiles/ps_new.dir/build: unittest/libmariadb/ps_new

.PHONY : unittest/libmariadb/CMakeFiles/ps_new.dir/build

unittest/libmariadb/CMakeFiles/ps_new.dir/requires: unittest/libmariadb/CMakeFiles/ps_new.dir/ps_new.c.o.requires

.PHONY : unittest/libmariadb/CMakeFiles/ps_new.dir/requires

unittest/libmariadb/CMakeFiles/ps_new.dir/clean:
	cd /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/unittest/libmariadb && $(CMAKE_COMMAND) -P CMakeFiles/ps_new.dir/cmake_clean.cmake
.PHONY : unittest/libmariadb/CMakeFiles/ps_new.dir/clean

unittest/libmariadb/CMakeFiles/ps_new.dir/depend:
	cd /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/unittest/libmariadb /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/unittest/libmariadb /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/unittest/libmariadb/CMakeFiles/ps_new.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unittest/libmariadb/CMakeFiles/ps_new.dir/depend

