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
include CMakeFiles/caching_sha2_password.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/caching_sha2_password.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/caching_sha2_password.dir/flags.make

CMakeFiles/caching_sha2_password.dir/plugins/auth/caching_sha2_pw.c.o: CMakeFiles/caching_sha2_password.dir/flags.make
CMakeFiles/caching_sha2_password.dir/plugins/auth/caching_sha2_pw.c.o: plugins/auth/caching_sha2_pw.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/caching_sha2_password.dir/plugins/auth/caching_sha2_pw.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -DPLUGIN_DYNAMIC=1  -o CMakeFiles/caching_sha2_password.dir/plugins/auth/caching_sha2_pw.c.o   -c /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/plugins/auth/caching_sha2_pw.c

CMakeFiles/caching_sha2_password.dir/plugins/auth/caching_sha2_pw.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/caching_sha2_password.dir/plugins/auth/caching_sha2_pw.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -DPLUGIN_DYNAMIC=1  -E /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/plugins/auth/caching_sha2_pw.c > CMakeFiles/caching_sha2_password.dir/plugins/auth/caching_sha2_pw.c.i

CMakeFiles/caching_sha2_password.dir/plugins/auth/caching_sha2_pw.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/caching_sha2_password.dir/plugins/auth/caching_sha2_pw.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -DPLUGIN_DYNAMIC=1  -S /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/plugins/auth/caching_sha2_pw.c -o CMakeFiles/caching_sha2_password.dir/plugins/auth/caching_sha2_pw.c.s

CMakeFiles/caching_sha2_password.dir/plugins/auth/caching_sha2_pw.c.o.requires:

.PHONY : CMakeFiles/caching_sha2_password.dir/plugins/auth/caching_sha2_pw.c.o.requires

CMakeFiles/caching_sha2_password.dir/plugins/auth/caching_sha2_pw.c.o.provides: CMakeFiles/caching_sha2_password.dir/plugins/auth/caching_sha2_pw.c.o.requires
	$(MAKE) -f CMakeFiles/caching_sha2_password.dir/build.make CMakeFiles/caching_sha2_password.dir/plugins/auth/caching_sha2_pw.c.o.provides.build
.PHONY : CMakeFiles/caching_sha2_password.dir/plugins/auth/caching_sha2_pw.c.o.provides

CMakeFiles/caching_sha2_password.dir/plugins/auth/caching_sha2_pw.c.o.provides.build: CMakeFiles/caching_sha2_password.dir/plugins/auth/caching_sha2_pw.c.o


CMakeFiles/caching_sha2_password.dir/libmariadb/secure/openssl_crypt.c.o: CMakeFiles/caching_sha2_password.dir/flags.make
CMakeFiles/caching_sha2_password.dir/libmariadb/secure/openssl_crypt.c.o: libmariadb/secure/openssl_crypt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/caching_sha2_password.dir/libmariadb/secure/openssl_crypt.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -DPLUGIN_DYNAMIC=1  -o CMakeFiles/caching_sha2_password.dir/libmariadb/secure/openssl_crypt.c.o   -c /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/libmariadb/secure/openssl_crypt.c

CMakeFiles/caching_sha2_password.dir/libmariadb/secure/openssl_crypt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/caching_sha2_password.dir/libmariadb/secure/openssl_crypt.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -DPLUGIN_DYNAMIC=1  -E /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/libmariadb/secure/openssl_crypt.c > CMakeFiles/caching_sha2_password.dir/libmariadb/secure/openssl_crypt.c.i

CMakeFiles/caching_sha2_password.dir/libmariadb/secure/openssl_crypt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/caching_sha2_password.dir/libmariadb/secure/openssl_crypt.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -DPLUGIN_DYNAMIC=1  -S /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/libmariadb/secure/openssl_crypt.c -o CMakeFiles/caching_sha2_password.dir/libmariadb/secure/openssl_crypt.c.s

CMakeFiles/caching_sha2_password.dir/libmariadb/secure/openssl_crypt.c.o.requires:

.PHONY : CMakeFiles/caching_sha2_password.dir/libmariadb/secure/openssl_crypt.c.o.requires

CMakeFiles/caching_sha2_password.dir/libmariadb/secure/openssl_crypt.c.o.provides: CMakeFiles/caching_sha2_password.dir/libmariadb/secure/openssl_crypt.c.o.requires
	$(MAKE) -f CMakeFiles/caching_sha2_password.dir/build.make CMakeFiles/caching_sha2_password.dir/libmariadb/secure/openssl_crypt.c.o.provides.build
.PHONY : CMakeFiles/caching_sha2_password.dir/libmariadb/secure/openssl_crypt.c.o.provides

CMakeFiles/caching_sha2_password.dir/libmariadb/secure/openssl_crypt.c.o.provides.build: CMakeFiles/caching_sha2_password.dir/libmariadb/secure/openssl_crypt.c.o


# Object files for target caching_sha2_password
caching_sha2_password_OBJECTS = \
"CMakeFiles/caching_sha2_password.dir/plugins/auth/caching_sha2_pw.c.o" \
"CMakeFiles/caching_sha2_password.dir/libmariadb/secure/openssl_crypt.c.o"

# External object files for target caching_sha2_password
caching_sha2_password_EXTERNAL_OBJECTS =

caching_sha2_password.so: CMakeFiles/caching_sha2_password.dir/plugins/auth/caching_sha2_pw.c.o
caching_sha2_password.so: CMakeFiles/caching_sha2_password.dir/libmariadb/secure/openssl_crypt.c.o
caching_sha2_password.so: CMakeFiles/caching_sha2_password.dir/build.make
caching_sha2_password.so: /usr/local/opt/openssl/lib/libssl.dylib
caching_sha2_password.so: /usr/local/opt/openssl/lib/libcrypto.dylib
caching_sha2_password.so: CMakeFiles/caching_sha2_password.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C shared module caching_sha2_password.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/caching_sha2_password.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/caching_sha2_password.dir/build: caching_sha2_password.so

.PHONY : CMakeFiles/caching_sha2_password.dir/build

CMakeFiles/caching_sha2_password.dir/requires: CMakeFiles/caching_sha2_password.dir/plugins/auth/caching_sha2_pw.c.o.requires
CMakeFiles/caching_sha2_password.dir/requires: CMakeFiles/caching_sha2_password.dir/libmariadb/secure/openssl_crypt.c.o.requires

.PHONY : CMakeFiles/caching_sha2_password.dir/requires

CMakeFiles/caching_sha2_password.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/caching_sha2_password.dir/cmake_clean.cmake
.PHONY : CMakeFiles/caching_sha2_password.dir/clean

CMakeFiles/caching_sha2_password.dir/depend:
	cd /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c /Users/zhangyanjun/Desktop/test/redis/deps/mariadb-connector-c/CMakeFiles/caching_sha2_password.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/caching_sha2_password.dir/depend

