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
include tasks/palindrome/CMakeFiles/test_palindrome.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tasks/palindrome/CMakeFiles/test_palindrome.dir/compiler_depend.make

# Include the progress variables for this target.
include tasks/palindrome/CMakeFiles/test_palindrome.dir/progress.make

# Include the compile flags for this target's objects.
include tasks/palindrome/CMakeFiles/test_palindrome.dir/flags.make

tasks/palindrome/CMakeFiles/test_palindrome.dir/palindrome.cpp.o: tasks/palindrome/CMakeFiles/test_palindrome.dir/flags.make
tasks/palindrome/CMakeFiles/test_palindrome.dir/palindrome.cpp.o: /Users/nika/ead-221-Nika-Prokudina-nika/tasks/palindrome/palindrome.cpp
tasks/palindrome/CMakeFiles/test_palindrome.dir/palindrome.cpp.o: tasks/palindrome/CMakeFiles/test_palindrome.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tasks/palindrome/CMakeFiles/test_palindrome.dir/palindrome.cpp.o"
	cd /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/tasks/palindrome && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/palindrome/CMakeFiles/test_palindrome.dir/palindrome.cpp.o -MF CMakeFiles/test_palindrome.dir/palindrome.cpp.o.d -o CMakeFiles/test_palindrome.dir/palindrome.cpp.o -c /Users/nika/ead-221-Nika-Prokudina-nika/tasks/palindrome/palindrome.cpp

tasks/palindrome/CMakeFiles/test_palindrome.dir/palindrome.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_palindrome.dir/palindrome.cpp.i"
	cd /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/tasks/palindrome && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/nika/ead-221-Nika-Prokudina-nika/tasks/palindrome/palindrome.cpp > CMakeFiles/test_palindrome.dir/palindrome.cpp.i

tasks/palindrome/CMakeFiles/test_palindrome.dir/palindrome.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_palindrome.dir/palindrome.cpp.s"
	cd /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/tasks/palindrome && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/nika/ead-221-Nika-Prokudina-nika/tasks/palindrome/palindrome.cpp -o CMakeFiles/test_palindrome.dir/palindrome.cpp.s

tasks/palindrome/CMakeFiles/test_palindrome.dir/test.cpp.o: tasks/palindrome/CMakeFiles/test_palindrome.dir/flags.make
tasks/palindrome/CMakeFiles/test_palindrome.dir/test.cpp.o: /Users/nika/ead-221-Nika-Prokudina-nika/tasks/palindrome/test.cpp
tasks/palindrome/CMakeFiles/test_palindrome.dir/test.cpp.o: tasks/palindrome/CMakeFiles/test_palindrome.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tasks/palindrome/CMakeFiles/test_palindrome.dir/test.cpp.o"
	cd /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/tasks/palindrome && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/palindrome/CMakeFiles/test_palindrome.dir/test.cpp.o -MF CMakeFiles/test_palindrome.dir/test.cpp.o.d -o CMakeFiles/test_palindrome.dir/test.cpp.o -c /Users/nika/ead-221-Nika-Prokudina-nika/tasks/palindrome/test.cpp

tasks/palindrome/CMakeFiles/test_palindrome.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_palindrome.dir/test.cpp.i"
	cd /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/tasks/palindrome && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/nika/ead-221-Nika-Prokudina-nika/tasks/palindrome/test.cpp > CMakeFiles/test_palindrome.dir/test.cpp.i

tasks/palindrome/CMakeFiles/test_palindrome.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_palindrome.dir/test.cpp.s"
	cd /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/tasks/palindrome && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/nika/ead-221-Nika-Prokudina-nika/tasks/palindrome/test.cpp -o CMakeFiles/test_palindrome.dir/test.cpp.s

# Object files for target test_palindrome
test_palindrome_OBJECTS = \
"CMakeFiles/test_palindrome.dir/palindrome.cpp.o" \
"CMakeFiles/test_palindrome.dir/test.cpp.o"

# External object files for target test_palindrome
test_palindrome_EXTERNAL_OBJECTS =

test_palindrome: tasks/palindrome/CMakeFiles/test_palindrome.dir/palindrome.cpp.o
test_palindrome: tasks/palindrome/CMakeFiles/test_palindrome.dir/test.cpp.o
test_palindrome: tasks/palindrome/CMakeFiles/test_palindrome.dir/build.make
test_palindrome: libcontrib_catch_main.a
test_palindrome: tasks/palindrome/CMakeFiles/test_palindrome.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../../test_palindrome"
	cd /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/tasks/palindrome && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_palindrome.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tasks/palindrome/CMakeFiles/test_palindrome.dir/build: test_palindrome
.PHONY : tasks/palindrome/CMakeFiles/test_palindrome.dir/build

tasks/palindrome/CMakeFiles/test_palindrome.dir/clean:
	cd /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/tasks/palindrome && $(CMAKE_COMMAND) -P CMakeFiles/test_palindrome.dir/cmake_clean.cmake
.PHONY : tasks/palindrome/CMakeFiles/test_palindrome.dir/clean

tasks/palindrome/CMakeFiles/test_palindrome.dir/depend:
	cd /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/nika/ead-221-Nika-Prokudina-nika /Users/nika/ead-221-Nika-Prokudina-nika/tasks/palindrome /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/tasks/palindrome /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/tasks/palindrome/CMakeFiles/test_palindrome.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tasks/palindrome/CMakeFiles/test_palindrome.dir/depend

