# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 4.0

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /tmp/YSFlight/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /tmp/YSFlight

# Include any dependencies generated for this target.
include public/fssimplewindow/samples/CMakeFiles/sample01-squash.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include public/fssimplewindow/samples/CMakeFiles/sample01-squash.dir/compiler_depend.make

# Include the progress variables for this target.
include public/fssimplewindow/samples/CMakeFiles/sample01-squash.dir/progress.make

# Include the compile flags for this target's objects.
include public/fssimplewindow/samples/CMakeFiles/sample01-squash.dir/flags.make

public/fssimplewindow/samples/CMakeFiles/sample01-squash.dir/codegen:
.PHONY : public/fssimplewindow/samples/CMakeFiles/sample01-squash.dir/codegen

public/fssimplewindow/samples/CMakeFiles/sample01-squash.dir/sample01-squash/sample01-squash.cpp.o: public/fssimplewindow/samples/CMakeFiles/sample01-squash.dir/flags.make
public/fssimplewindow/samples/CMakeFiles/sample01-squash.dir/sample01-squash/sample01-squash.cpp.o: /tmp/YSFlight/public/src/fssimplewindow/samples/sample01-squash/sample01-squash.cpp
public/fssimplewindow/samples/CMakeFiles/sample01-squash.dir/sample01-squash/sample01-squash.cpp.o: public/fssimplewindow/samples/CMakeFiles/sample01-squash.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/tmp/YSFlight/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object public/fssimplewindow/samples/CMakeFiles/sample01-squash.dir/sample01-squash/sample01-squash.cpp.o"
	cd /tmp/YSFlight/public/fssimplewindow/samples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT public/fssimplewindow/samples/CMakeFiles/sample01-squash.dir/sample01-squash/sample01-squash.cpp.o -MF CMakeFiles/sample01-squash.dir/sample01-squash/sample01-squash.cpp.o.d -o CMakeFiles/sample01-squash.dir/sample01-squash/sample01-squash.cpp.o -c /tmp/YSFlight/public/src/fssimplewindow/samples/sample01-squash/sample01-squash.cpp

public/fssimplewindow/samples/CMakeFiles/sample01-squash.dir/sample01-squash/sample01-squash.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/sample01-squash.dir/sample01-squash/sample01-squash.cpp.i"
	cd /tmp/YSFlight/public/fssimplewindow/samples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/YSFlight/public/src/fssimplewindow/samples/sample01-squash/sample01-squash.cpp > CMakeFiles/sample01-squash.dir/sample01-squash/sample01-squash.cpp.i

public/fssimplewindow/samples/CMakeFiles/sample01-squash.dir/sample01-squash/sample01-squash.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/sample01-squash.dir/sample01-squash/sample01-squash.cpp.s"
	cd /tmp/YSFlight/public/fssimplewindow/samples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/YSFlight/public/src/fssimplewindow/samples/sample01-squash/sample01-squash.cpp -o CMakeFiles/sample01-squash.dir/sample01-squash/sample01-squash.cpp.s

# Object files for target sample01-squash
sample01__squash_OBJECTS = \
"CMakeFiles/sample01-squash.dir/sample01-squash/sample01-squash.cpp.o"

# External object files for target sample01-squash
sample01__squash_EXTERNAL_OBJECTS =

public/fssimplewindow/samples/sample01-squash: public/fssimplewindow/samples/CMakeFiles/sample01-squash.dir/sample01-squash/sample01-squash.cpp.o
public/fssimplewindow/samples/sample01-squash: public/fssimplewindow/samples/CMakeFiles/sample01-squash.dir/build.make
public/fssimplewindow/samples/sample01-squash: public/fssimplewindow/samples/CMakeFiles/sample01-squash.dir/compiler_depend.ts
public/fssimplewindow/samples/sample01-squash: public/fssimplewindow/src/libfssimplewindow.a
public/fssimplewindow/samples/sample01-squash: public/ysbitmapfont/src/libysbitmapfont.a
public/fssimplewindow/samples/sample01-squash: public/ysgl/src/libysgl.a
public/fssimplewindow/samples/sample01-squash: public/fssimplewindow/samples/CMakeFiles/sample01-squash.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/tmp/YSFlight/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sample01-squash"
	cd /tmp/YSFlight/public/fssimplewindow/samples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sample01-squash.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
public/fssimplewindow/samples/CMakeFiles/sample01-squash.dir/build: public/fssimplewindow/samples/sample01-squash
.PHONY : public/fssimplewindow/samples/CMakeFiles/sample01-squash.dir/build

public/fssimplewindow/samples/CMakeFiles/sample01-squash.dir/clean:
	cd /tmp/YSFlight/public/fssimplewindow/samples && $(CMAKE_COMMAND) -P CMakeFiles/sample01-squash.dir/cmake_clean.cmake
.PHONY : public/fssimplewindow/samples/CMakeFiles/sample01-squash.dir/clean

public/fssimplewindow/samples/CMakeFiles/sample01-squash.dir/depend:
	cd /tmp/YSFlight && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/YSFlight/src /tmp/YSFlight/public/src/fssimplewindow/samples /tmp/YSFlight /tmp/YSFlight/public/fssimplewindow/samples /tmp/YSFlight/public/fssimplewindow/samples/CMakeFiles/sample01-squash.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : public/fssimplewindow/samples/CMakeFiles/sample01-squash.dir/depend

