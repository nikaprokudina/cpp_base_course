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
CMAKE_BINARY_DIR = /Users/nika/ead-221-Nika-Prokudina-nika/build

# Include any dependencies generated for this target.
include tasks/sort_students/CMakeFiles/test_sort_students.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tasks/sort_students/CMakeFiles/test_sort_students.dir/compiler_depend.make

# Include the progress variables for this target.
include tasks/sort_students/CMakeFiles/test_sort_students.dir/progress.make

# Include the compile flags for this target's objects.
include tasks/sort_students/CMakeFiles/test_sort_students.dir/flags.make

tasks/sort_students/CMakeFiles/test_sort_students.dir/test.cpp.o: tasks/sort_students/CMakeFiles/test_sort_students.dir/flags.make
tasks/sort_students/CMakeFiles/test_sort_students.dir/test.cpp.o: /Users/nika/ead-221-Nika-Prokudina-nika/tasks/sort_students/test.cpp
tasks/sort_students/CMakeFiles/test_sort_students.dir/test.cpp.o: tasks/sort_students/CMakeFiles/test_sort_students.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/nika/ead-221-Nika-Prokudina-nika/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tasks/sort_students/CMakeFiles/test_sort_students.dir/test.cpp.o"
	cd /Users/nika/ead-221-Nika-Prokudina-nika/build/tasks/sort_students && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/sort_students/CMakeFiles/test_sort_students.dir/test.cpp.o -MF CMakeFiles/test_sort_students.dir/test.cpp.o.d -o CMakeFiles/test_sort_students.dir/test.cpp.o -c /Users/nika/ead-221-Nika-Prokudina-nika/tasks/sort_students/test.cpp

tasks/sort_students/CMakeFiles/test_sort_students.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_sort_students.dir/test.cpp.i"
	cd /Users/nika/ead-221-Nika-Prokudina-nika/build/tasks/sort_students && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/nika/ead-221-Nika-Prokudina-nika/tasks/sort_students/test.cpp > CMakeFiles/test_sort_students.dir/test.cpp.i

tasks/sort_students/CMakeFiles/test_sort_students.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_sort_students.dir/test.cpp.s"
	cd /Users/nika/ead-221-Nika-Prokudina-nika/build/tasks/sort_students && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/nika/ead-221-Nika-Prokudina-nika/tasks/sort_students/test.cpp -o CMakeFiles/test_sort_students.dir/test.cpp.s

tasks/sort_students/CMakeFiles/test_sort_students.dir/sort_students.cpp.o: tasks/sort_students/CMakeFiles/test_sort_students.dir/flags.make
tasks/sort_students/CMakeFiles/test_sort_students.dir/sort_students.cpp.o: /Users/nika/ead-221-Nika-Prokudina-nika/tasks/sort_students/sort_students.cpp
tasks/sort_students/CMakeFiles/test_sort_students.dir/sort_students.cpp.o: tasks/sort_students/CMakeFiles/test_sort_students.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/nika/ead-221-Nika-Prokudina-nika/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tasks/sort_students/CMakeFiles/test_sort_students.dir/sort_students.cpp.o"
	cd /Users/nika/ead-221-Nika-Prokudina-nika/build/tasks/sort_students && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/sort_students/CMakeFiles/test_sort_students.dir/sort_students.cpp.o -MF CMakeFiles/test_sort_students.dir/sort_students.cpp.o.d -o CMakeFiles/test_sort_students.dir/sort_students.cpp.o -c /Users/nika/ead-221-Nika-Prokudina-nika/tasks/sort_students/sort_students.cpp

tasks/sort_students/CMakeFiles/test_sort_students.dir/sort_students.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_sort_students.dir/sort_students.cpp.i"
	cd /Users/nika/ead-221-Nika-Prokudina-nika/build/tasks/sort_students && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/nika/ead-221-Nika-Prokudina-nika/tasks/sort_students/sort_students.cpp > CMakeFiles/test_sort_students.dir/sort_students.cpp.i

tasks/sort_students/CMakeFiles/test_sort_students.dir/sort_students.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_sort_students.dir/sort_students.cpp.s"
	cd /Users/nika/ead-221-Nika-Prokudina-nika/build/tasks/sort_students && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/nika/ead-221-Nika-Prokudina-nika/tasks/sort_students/sort_students.cpp -o CMakeFiles/test_sort_students.dir/sort_students.cpp.s

# Object files for target test_sort_students
test_sort_students_OBJECTS = \
"CMakeFiles/test_sort_students.dir/test.cpp.o" \
"CMakeFiles/test_sort_students.dir/sort_students.cpp.o"

# External object files for target test_sort_students
test_sort_students_EXTERNAL_OBJECTS =

test_sort_students: tasks/sort_students/CMakeFiles/test_sort_students.dir/test.cpp.o
test_sort_students: tasks/sort_students/CMakeFiles/test_sort_students.dir/sort_students.cpp.o
test_sort_students: tasks/sort_students/CMakeFiles/test_sort_students.dir/build.make
test_sort_students: libcontrib_catch_main.a
test_sort_students: tasks/sort_students/CMakeFiles/test_sort_students.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/nika/ead-221-Nika-Prokudina-nika/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../../test_sort_students"
	cd /Users/nika/ead-221-Nika-Prokudina-nika/build/tasks/sort_students && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_sort_students.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tasks/sort_students/CMakeFiles/test_sort_students.dir/build: test_sort_students
.PHONY : tasks/sort_students/CMakeFiles/test_sort_students.dir/build

tasks/sort_students/CMakeFiles/test_sort_students.dir/clean:
	cd /Users/nika/ead-221-Nika-Prokudina-nika/build/tasks/sort_students && $(CMAKE_COMMAND) -P CMakeFiles/test_sort_students.dir/cmake_clean.cmake
.PHONY : tasks/sort_students/CMakeFiles/test_sort_students.dir/clean

tasks/sort_students/CMakeFiles/test_sort_students.dir/depend:
	cd /Users/nika/ead-221-Nika-Prokudina-nika/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/nika/ead-221-Nika-Prokudina-nika /Users/nika/ead-221-Nika-Prokudina-nika/tasks/sort_students /Users/nika/ead-221-Nika-Prokudina-nika/build /Users/nika/ead-221-Nika-Prokudina-nika/build/tasks/sort_students /Users/nika/ead-221-Nika-Prokudina-nika/build/tasks/sort_students/CMakeFiles/test_sort_students.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tasks/sort_students/CMakeFiles/test_sort_students.dir/depend

