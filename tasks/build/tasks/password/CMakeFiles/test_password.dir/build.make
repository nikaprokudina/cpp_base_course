# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/nika/ead-221-Nika-Prokudina-nika

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build

# Include any dependencies generated for this target.
include tasks/password/CMakeFiles/test_password.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tasks/password/CMakeFiles/test_password.dir/compiler_depend.make

# Include the progress variables for this target.
include tasks/password/CMakeFiles/test_password.dir/progress.make

# Include the compile flags for this target's objects.
include tasks/password/CMakeFiles/test_password.dir/flags.make

tasks/password/CMakeFiles/test_password.dir/password.cpp.o: tasks/password/CMakeFiles/test_password.dir/flags.make
tasks/password/CMakeFiles/test_password.dir/password.cpp.o: /Users/nika/ead-221-Nika-Prokudina-nika/tasks/password/password.cpp
tasks/password/CMakeFiles/test_password.dir/password.cpp.o: tasks/password/CMakeFiles/test_password.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tasks/password/CMakeFiles/test_password.dir/password.cpp.o"
	cd /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/tasks/password && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/password/CMakeFiles/test_password.dir/password.cpp.o -MF CMakeFiles/test_password.dir/password.cpp.o.d -o CMakeFiles/test_password.dir/password.cpp.o -c /Users/nika/ead-221-Nika-Prokudina-nika/tasks/password/password.cpp

tasks/password/CMakeFiles/test_password.dir/password.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_password.dir/password.cpp.i"
	cd /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/tasks/password && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/nika/ead-221-Nika-Prokudina-nika/tasks/password/password.cpp > CMakeFiles/test_password.dir/password.cpp.i

tasks/password/CMakeFiles/test_password.dir/password.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_password.dir/password.cpp.s"
	cd /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/tasks/password && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/nika/ead-221-Nika-Prokudina-nika/tasks/password/password.cpp -o CMakeFiles/test_password.dir/password.cpp.s

tasks/password/CMakeFiles/test_password.dir/test.cpp.o: tasks/password/CMakeFiles/test_password.dir/flags.make
tasks/password/CMakeFiles/test_password.dir/test.cpp.o: /Users/nika/ead-221-Nika-Prokudina-nika/tasks/password/test.cpp
tasks/password/CMakeFiles/test_password.dir/test.cpp.o: tasks/password/CMakeFiles/test_password.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tasks/password/CMakeFiles/test_password.dir/test.cpp.o"
	cd /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/tasks/password && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/password/CMakeFiles/test_password.dir/test.cpp.o -MF CMakeFiles/test_password.dir/test.cpp.o.d -o CMakeFiles/test_password.dir/test.cpp.o -c /Users/nika/ead-221-Nika-Prokudina-nika/tasks/password/test.cpp

tasks/password/CMakeFiles/test_password.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_password.dir/test.cpp.i"
	cd /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/tasks/password && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/nika/ead-221-Nika-Prokudina-nika/tasks/password/test.cpp > CMakeFiles/test_password.dir/test.cpp.i

tasks/password/CMakeFiles/test_password.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_password.dir/test.cpp.s"
	cd /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/tasks/password && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/nika/ead-221-Nika-Prokudina-nika/tasks/password/test.cpp -o CMakeFiles/test_password.dir/test.cpp.s

# Object files for target test_password
test_password_OBJECTS = \
"CMakeFiles/test_password.dir/password.cpp.o" \
"CMakeFiles/test_password.dir/test.cpp.o"

# External object files for target test_password
test_password_EXTERNAL_OBJECTS =

test_password: tasks/password/CMakeFiles/test_password.dir/password.cpp.o
test_password: tasks/password/CMakeFiles/test_password.dir/test.cpp.o
test_password: tasks/password/CMakeFiles/test_password.dir/build.make
test_password: libcontrib_catch_main.a
test_password: tasks/password/CMakeFiles/test_password.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../../test_password"
	cd /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/tasks/password && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_password.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tasks/password/CMakeFiles/test_password.dir/build: test_password
.PHONY : tasks/password/CMakeFiles/test_password.dir/build

tasks/password/CMakeFiles/test_password.dir/clean:
	cd /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/tasks/password && $(CMAKE_COMMAND) -P CMakeFiles/test_password.dir/cmake_clean.cmake
.PHONY : tasks/password/CMakeFiles/test_password.dir/clean

tasks/password/CMakeFiles/test_password.dir/depend:
	cd /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/nika/ead-221-Nika-Prokudina-nika /Users/nika/ead-221-Nika-Prokudina-nika/tasks/password /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/tasks/password /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/tasks/password/CMakeFiles/test_password.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tasks/password/CMakeFiles/test_password.dir/depend

