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
include mariadb_config/CMakeFiles/mariadb_config.dir/depend.make

# Include the progress variables for this target.
include mariadb_config/CMakeFiles/mariadb_config.dir/progress.make

# Include the compile flags for this target's objects.
include mariadb_config/CMakeFiles/mariadb_config.dir/flags.make

mariadb_config/CMakeFiles/mariadb_config.dir/mariadb_config.c.o: mariadb_config/CMakeFiles/mariadb_config.dir/flags.make
mariadb_config/CMakeFiles/mariadb_config.dir/mariadb_config.c.o: mariadb_config/mariadb_config.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object mariadb_config/CMakeFiles/mariadb_config.dir/mariadb_config.c.o"
	cd /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/mariadb_config && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mariadb_config.dir/mariadb_config.c.o   -c /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/mariadb_config/mariadb_config.c

mariadb_config/CMakeFiles/mariadb_config.dir/mariadb_config.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mariadb_config.dir/mariadb_config.c.i"
	cd /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/mariadb_config && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/mariadb_config/mariadb_config.c > CMakeFiles/mariadb_config.dir/mariadb_config.c.i

mariadb_config/CMakeFiles/mariadb_config.dir/mariadb_config.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mariadb_config.dir/mariadb_config.c.s"
	cd /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/mariadb_config && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/mariadb_config/mariadb_config.c -o CMakeFiles/mariadb_config.dir/mariadb_config.c.s

mariadb_config/CMakeFiles/mariadb_config.dir/mariadb_config.c.o.requires:

.PHONY : mariadb_config/CMakeFiles/mariadb_config.dir/mariadb_config.c.o.requires

mariadb_config/CMakeFiles/mariadb_config.dir/mariadb_config.c.o.provides: mariadb_config/CMakeFiles/mariadb_config.dir/mariadb_config.c.o.requires
	$(MAKE) -f mariadb_config/CMakeFiles/mariadb_config.dir/build.make mariadb_config/CMakeFiles/mariadb_config.dir/mariadb_config.c.o.provides.build
.PHONY : mariadb_config/CMakeFiles/mariadb_config.dir/mariadb_config.c.o.provides

mariadb_config/CMakeFiles/mariadb_config.dir/mariadb_config.c.o.provides.build: mariadb_config/CMakeFiles/mariadb_config.dir/mariadb_config.c.o


# Object files for target mariadb_config
mariadb_config_OBJECTS = \
"CMakeFiles/mariadb_config.dir/mariadb_config.c.o"

# External object files for target mariadb_config
mariadb_config_EXTERNAL_OBJECTS =

mariadb_config/mariadb_config: mariadb_config/CMakeFiles/mariadb_config.dir/mariadb_config.c.o
mariadb_config/mariadb_config: mariadb_config/CMakeFiles/mariadb_config.dir/build.make
mariadb_config/mariadb_config: libmariadb/libmariadbclient.a
mariadb_config/mariadb_config: /usr/lib/libiconv.dylib
mariadb_config/mariadb_config: /usr/local/opt/openssl/lib/libssl.dylib
mariadb_config/mariadb_config: /usr/local/opt/openssl/lib/libcrypto.dylib
mariadb_config/mariadb_config: mariadb_config/CMakeFiles/mariadb_config.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable mariadb_config"
	cd /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/mariadb_config && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mariadb_config.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
mariadb_config/CMakeFiles/mariadb_config.dir/build: mariadb_config/mariadb_config

.PHONY : mariadb_config/CMakeFiles/mariadb_config.dir/build

mariadb_config/CMakeFiles/mariadb_config.dir/requires: mariadb_config/CMakeFiles/mariadb_config.dir/mariadb_config.c.o.requires

.PHONY : mariadb_config/CMakeFiles/mariadb_config.dir/requires

mariadb_config/CMakeFiles/mariadb_config.dir/clean:
	cd /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/mariadb_config && $(CMAKE_COMMAND) -P CMakeFiles/mariadb_config.dir/cmake_clean.cmake
.PHONY : mariadb_config/CMakeFiles/mariadb_config.dir/clean

mariadb_config/CMakeFiles/mariadb_config.dir/depend:
	cd /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/mariadb_config /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/mariadb_config /Users/zhangyanjun/Desktop/test/proxysql/deps/mariadb-client-library/mariadb_client/mariadb_config/CMakeFiles/mariadb_config.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : mariadb_config/CMakeFiles/mariadb_config.dir/depend

