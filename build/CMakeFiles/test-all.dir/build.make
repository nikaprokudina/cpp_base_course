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

# Utility rule file for test-all.

# Include any custom commands dependencies for this target.
include CMakeFiles/test-all.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/test-all.dir/progress.make

test-all: CMakeFiles/test-all.dir/build.make
.PHONY : test-all

# Rule to build all files generated by this target.
CMakeFiles/test-all.dir/build: test-all
.PHONY : CMakeFiles/test-all.dir/build

CMakeFiles/test-all.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test-all.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test-all.dir/clean

CMakeFiles/test-all.dir/depend:
	cd /Users/nika/ead-221-Nika-Prokudina-nika/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/nika/ead-221-Nika-Prokudina-nika /Users/nika/ead-221-Nika-Prokudina-nika /Users/nika/ead-221-Nika-Prokudina-nika/build /Users/nika/ead-221-Nika-Prokudina-nika/build /Users/nika/ead-221-Nika-Prokudina-nika/build/CMakeFiles/test-all.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test-all.dir/depend

