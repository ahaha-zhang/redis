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
CMAKE_SOURCE_DIR = /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c

# Include any dependencies generated for this target.
include unittest/libmariadb/CMakeFiles/logs.dir/depend.make

# Include the progress variables for this target.
include unittest/libmariadb/CMakeFiles/logs.dir/progress.make

# Include the compile flags for this target's objects.
include unittest/libmariadb/CMakeFiles/logs.dir/flags.make

unittest/libmariadb/CMakeFiles/logs.dir/logs.c.o: unittest/libmariadb/CMakeFiles/logs.dir/flags.make
unittest/libmariadb/CMakeFiles/logs.dir/logs.c.o: unittest/libmariadb/logs.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object unittest/libmariadb/CMakeFiles/logs.dir/logs.c.o"
	cd /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/unittest/libmariadb && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/logs.dir/logs.c.o   -c /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/unittest/libmariadb/logs.c

unittest/libmariadb/CMakeFiles/logs.dir/logs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/logs.dir/logs.c.i"
	cd /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/unittest/libmariadb && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/unittest/libmariadb/logs.c > CMakeFiles/logs.dir/logs.c.i

unittest/libmariadb/CMakeFiles/logs.dir/logs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/logs.dir/logs.c.s"
	cd /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/unittest/libmariadb && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/unittest/libmariadb/logs.c -o CMakeFiles/logs.dir/logs.c.s

unittest/libmariadb/CMakeFiles/logs.dir/logs.c.o.requires:

.PHONY : unittest/libmariadb/CMakeFiles/logs.dir/logs.c.o.requires

unittest/libmariadb/CMakeFiles/logs.dir/logs.c.o.provides: unittest/libmariadb/CMakeFiles/logs.dir/logs.c.o.requires
	$(MAKE) -f unittest/libmariadb/CMakeFiles/logs.dir/build.make unittest/libmariadb/CMakeFiles/logs.dir/logs.c.o.provides.build
.PHONY : unittest/libmariadb/CMakeFiles/logs.dir/logs.c.o.provides

unittest/libmariadb/CMakeFiles/logs.dir/logs.c.o.provides.build: unittest/libmariadb/CMakeFiles/logs.dir/logs.c.o


# Object files for target logs
logs_OBJECTS = \
"CMakeFiles/logs.dir/logs.c.o"

# External object files for target logs
logs_EXTERNAL_OBJECTS =

unittest/libmariadb/logs: unittest/libmariadb/CMakeFiles/logs.dir/logs.c.o
unittest/libmariadb/logs: unittest/libmariadb/CMakeFiles/logs.dir/build.make
unittest/libmariadb/logs: unittest/mytap/libcctap.a
unittest/libmariadb/logs: unittest/libmariadb/libma_getopt.a
unittest/libmariadb/logs: libmariadb/libmariadbclient.a
unittest/libmariadb/logs: /usr/lib/libiconv.dylib
unittest/libmariadb/logs: /usr/local/opt/openssl/lib/libssl.dylib
unittest/libmariadb/logs: /usr/local/opt/openssl/lib/libcrypto.dylib
unittest/libmariadb/logs: unittest/libmariadb/CMakeFiles/logs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable logs"
	cd /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/unittest/libmariadb && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/logs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
unittest/libmariadb/CMakeFiles/logs.dir/build: unittest/libmariadb/logs

.PHONY : unittest/libmariadb/CMakeFiles/logs.dir/build

unittest/libmariadb/CMakeFiles/logs.dir/requires: unittest/libmariadb/CMakeFiles/logs.dir/logs.c.o.requires

.PHONY : unittest/libmariadb/CMakeFiles/logs.dir/requires

unittest/libmariadb/CMakeFiles/logs.dir/clean:
	cd /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/unittest/libmariadb && $(CMAKE_COMMAND) -P CMakeFiles/logs.dir/cmake_clean.cmake
.PHONY : unittest/libmariadb/CMakeFiles/logs.dir/clean

unittest/libmariadb/CMakeFiles/logs.dir/depend:
	cd /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/unittest/libmariadb /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/unittest/libmariadb /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/unittest/libmariadb/CMakeFiles/logs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unittest/libmariadb/CMakeFiles/logs.dir/depend

