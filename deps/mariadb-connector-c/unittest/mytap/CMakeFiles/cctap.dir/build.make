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
include unittest/mytap/CMakeFiles/cctap.dir/depend.make

# Include the progress variables for this target.
include unittest/mytap/CMakeFiles/cctap.dir/progress.make

# Include the compile flags for this target's objects.
include unittest/mytap/CMakeFiles/cctap.dir/flags.make

unittest/mytap/CMakeFiles/cctap.dir/tap.c.o: unittest/mytap/CMakeFiles/cctap.dir/flags.make
unittest/mytap/CMakeFiles/cctap.dir/tap.c.o: unittest/mytap/tap.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object unittest/mytap/CMakeFiles/cctap.dir/tap.c.o"
	cd /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/unittest/mytap && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cctap.dir/tap.c.o   -c /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/unittest/mytap/tap.c

unittest/mytap/CMakeFiles/cctap.dir/tap.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cctap.dir/tap.c.i"
	cd /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/unittest/mytap && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/unittest/mytap/tap.c > CMakeFiles/cctap.dir/tap.c.i

unittest/mytap/CMakeFiles/cctap.dir/tap.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cctap.dir/tap.c.s"
	cd /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/unittest/mytap && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/unittest/mytap/tap.c -o CMakeFiles/cctap.dir/tap.c.s

unittest/mytap/CMakeFiles/cctap.dir/tap.c.o.requires:

.PHONY : unittest/mytap/CMakeFiles/cctap.dir/tap.c.o.requires

unittest/mytap/CMakeFiles/cctap.dir/tap.c.o.provides: unittest/mytap/CMakeFiles/cctap.dir/tap.c.o.requires
	$(MAKE) -f unittest/mytap/CMakeFiles/cctap.dir/build.make unittest/mytap/CMakeFiles/cctap.dir/tap.c.o.provides.build
.PHONY : unittest/mytap/CMakeFiles/cctap.dir/tap.c.o.provides

unittest/mytap/CMakeFiles/cctap.dir/tap.c.o.provides.build: unittest/mytap/CMakeFiles/cctap.dir/tap.c.o


# Object files for target cctap
cctap_OBJECTS = \
"CMakeFiles/cctap.dir/tap.c.o"

# External object files for target cctap
cctap_EXTERNAL_OBJECTS =

unittest/mytap/libcctap.a: unittest/mytap/CMakeFiles/cctap.dir/tap.c.o
unittest/mytap/libcctap.a: unittest/mytap/CMakeFiles/cctap.dir/build.make
unittest/mytap/libcctap.a: unittest/mytap/CMakeFiles/cctap.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libcctap.a"
	cd /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/unittest/mytap && $(CMAKE_COMMAND) -P CMakeFiles/cctap.dir/cmake_clean_target.cmake
	cd /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/unittest/mytap && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cctap.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
unittest/mytap/CMakeFiles/cctap.dir/build: unittest/mytap/libcctap.a

.PHONY : unittest/mytap/CMakeFiles/cctap.dir/build

unittest/mytap/CMakeFiles/cctap.dir/requires: unittest/mytap/CMakeFiles/cctap.dir/tap.c.o.requires

.PHONY : unittest/mytap/CMakeFiles/cctap.dir/requires

unittest/mytap/CMakeFiles/cctap.dir/clean:
	cd /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/unittest/mytap && $(CMAKE_COMMAND) -P CMakeFiles/cctap.dir/cmake_clean.cmake
.PHONY : unittest/mytap/CMakeFiles/cctap.dir/clean

unittest/mytap/CMakeFiles/cctap.dir/depend:
	cd /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/unittest/mytap /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/unittest/mytap /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/unittest/mytap/CMakeFiles/cctap.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unittest/mytap/CMakeFiles/cctap.dir/depend

