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
include tasks/multiplication/CMakeFiles/test_multiplication.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tasks/multiplication/CMakeFiles/test_multiplication.dir/compiler_depend.make

# Include the progress variables for this target.
include tasks/multiplication/CMakeFiles/test_multiplication.dir/progress.make

# Include the compile flags for this target's objects.
include tasks/multiplication/CMakeFiles/test_multiplication.dir/flags.make

tasks/multiplication/CMakeFiles/test_multiplication.dir/test.cpp.o: tasks/multiplication/CMakeFiles/test_multiplication.dir/flags.make
tasks/multiplication/CMakeFiles/test_multiplication.dir/test.cpp.o: /Users/nika/ead-221-Nika-Prokudina-nika/tasks/multiplication/test.cpp
tasks/multiplication/CMakeFiles/test_multiplication.dir/test.cpp.o: tasks/multiplication/CMakeFiles/test_multiplication.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tasks/multiplication/CMakeFiles/test_multiplication.dir/test.cpp.o"
	cd /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/tasks/multiplication && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/multiplication/CMakeFiles/test_multiplication.dir/test.cpp.o -MF CMakeFiles/test_multiplication.dir/test.cpp.o.d -o CMakeFiles/test_multiplication.dir/test.cpp.o -c /Users/nika/ead-221-Nika-Prokudina-nika/tasks/multiplication/test.cpp

tasks/multiplication/CMakeFiles/test_multiplication.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_multiplication.dir/test.cpp.i"
	cd /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/tasks/multiplication && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/nika/ead-221-Nika-Prokudina-nika/tasks/multiplication/test.cpp > CMakeFiles/test_multiplication.dir/test.cpp.i

tasks/multiplication/CMakeFiles/test_multiplication.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_multiplication.dir/test.cpp.s"
	cd /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/tasks/multiplication && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/nika/ead-221-Nika-Prokudina-nika/tasks/multiplication/test.cpp -o CMakeFiles/test_multiplication.dir/test.cpp.s

tasks/multiplication/CMakeFiles/test_multiplication.dir/multiplication.cpp.o: tasks/multiplication/CMakeFiles/test_multiplication.dir/flags.make
tasks/multiplication/CMakeFiles/test_multiplication.dir/multiplication.cpp.o: /Users/nika/ead-221-Nika-Prokudina-nika/tasks/multiplication/multiplication.cpp
tasks/multiplication/CMakeFiles/test_multiplication.dir/multiplication.cpp.o: tasks/multiplication/CMakeFiles/test_multiplication.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tasks/multiplication/CMakeFiles/test_multiplication.dir/multiplication.cpp.o"
	cd /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/tasks/multiplication && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/multiplication/CMakeFiles/test_multiplication.dir/multiplication.cpp.o -MF CMakeFiles/test_multiplication.dir/multiplication.cpp.o.d -o CMakeFiles/test_multiplication.dir/multiplication.cpp.o -c /Users/nika/ead-221-Nika-Prokudina-nika/tasks/multiplication/multiplication.cpp

tasks/multiplication/CMakeFiles/test_multiplication.dir/multiplication.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_multiplication.dir/multiplication.cpp.i"
	cd /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/tasks/multiplication && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/nika/ead-221-Nika-Prokudina-nika/tasks/multiplication/multiplication.cpp > CMakeFiles/test_multiplication.dir/multiplication.cpp.i

tasks/multiplication/CMakeFiles/test_multiplication.dir/multiplication.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_multiplication.dir/multiplication.cpp.s"
	cd /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/tasks/multiplication && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/nika/ead-221-Nika-Prokudina-nika/tasks/multiplication/multiplication.cpp -o CMakeFiles/test_multiplication.dir/multiplication.cpp.s

# Object files for target test_multiplication
test_multiplication_OBJECTS = \
"CMakeFiles/test_multiplication.dir/test.cpp.o" \
"CMakeFiles/test_multiplication.dir/multiplication.cpp.o"

# External object files for target test_multiplication
test_multiplication_EXTERNAL_OBJECTS =

test_multiplication: tasks/multiplication/CMakeFiles/test_multiplication.dir/test.cpp.o
test_multiplication: tasks/multiplication/CMakeFiles/test_multiplication.dir/multiplication.cpp.o
test_multiplication: tasks/multiplication/CMakeFiles/test_multiplication.dir/build.make
test_multiplication: libcontrib_catch_main.a
test_multiplication: tasks/multiplication/CMakeFiles/test_multiplication.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../../test_multiplication"
	cd /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/tasks/multiplication && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_multiplication.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tasks/multiplication/CMakeFiles/test_multiplication.dir/build: test_multiplication
.PHONY : tasks/multiplication/CMakeFiles/test_multiplication.dir/build

tasks/multiplication/CMakeFiles/test_multiplication.dir/clean:
	cd /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/tasks/multiplication && $(CMAKE_COMMAND) -P CMakeFiles/test_multiplication.dir/cmake_clean.cmake
.PHONY : tasks/multiplication/CMakeFiles/test_multiplication.dir/clean

tasks/multiplication/CMakeFiles/test_multiplication.dir/depend:
	cd /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/nika/ead-221-Nika-Prokudina-nika /Users/nika/ead-221-Nika-Prokudina-nika/tasks/multiplication /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/tasks/multiplication /Users/nika/ead-221-Nika-Prokudina-nika/tasks/build/tasks/multiplication/CMakeFiles/test_multiplication.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tasks/multiplication/CMakeFiles/test_multiplication.dir/depend

