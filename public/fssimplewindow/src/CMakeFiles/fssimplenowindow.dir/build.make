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
include public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/compiler_depend.make

# Include the progress variables for this target.
include public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/progress.make

# Include the compile flags for this target's objects.
include public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/flags.make

public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/codegen:
.PHONY : public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/codegen

public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/fssimplewindowcommon.cpp.o: public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/flags.make
public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/fssimplewindowcommon.cpp.o: /tmp/YSFlight/public/src/fssimplewindow/src/fssimplewindowcommon.cpp
public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/fssimplewindowcommon.cpp.o: public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/tmp/YSFlight/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/fssimplewindowcommon.cpp.o"
	cd /tmp/YSFlight/public/fssimplewindow/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/fssimplewindowcommon.cpp.o -MF CMakeFiles/fssimplenowindow.dir/fssimplewindowcommon.cpp.o.d -o CMakeFiles/fssimplenowindow.dir/fssimplewindowcommon.cpp.o -c /tmp/YSFlight/public/src/fssimplewindow/src/fssimplewindowcommon.cpp

public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/fssimplewindowcommon.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/fssimplenowindow.dir/fssimplewindowcommon.cpp.i"
	cd /tmp/YSFlight/public/fssimplewindow/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/YSFlight/public/src/fssimplewindow/src/fssimplewindowcommon.cpp > CMakeFiles/fssimplenowindow.dir/fssimplewindowcommon.cpp.i

public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/fssimplewindowcommon.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/fssimplenowindow.dir/fssimplewindowcommon.cpp.s"
	cd /tmp/YSFlight/public/fssimplewindow/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/YSFlight/public/src/fssimplewindow/src/fssimplewindowcommon.cpp -o CMakeFiles/fssimplenowindow.dir/fssimplewindowcommon.cpp.s

public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/nownd/fssimplenowindow.cpp.o: public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/flags.make
public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/nownd/fssimplenowindow.cpp.o: /tmp/YSFlight/public/src/fssimplewindow/src/nownd/fssimplenowindow.cpp
public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/nownd/fssimplenowindow.cpp.o: public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/tmp/YSFlight/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/nownd/fssimplenowindow.cpp.o"
	cd /tmp/YSFlight/public/fssimplewindow/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/nownd/fssimplenowindow.cpp.o -MF CMakeFiles/fssimplenowindow.dir/nownd/fssimplenowindow.cpp.o.d -o CMakeFiles/fssimplenowindow.dir/nownd/fssimplenowindow.cpp.o -c /tmp/YSFlight/public/src/fssimplewindow/src/nownd/fssimplenowindow.cpp

public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/nownd/fssimplenowindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/fssimplenowindow.dir/nownd/fssimplenowindow.cpp.i"
	cd /tmp/YSFlight/public/fssimplewindow/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/YSFlight/public/src/fssimplewindow/src/nownd/fssimplenowindow.cpp > CMakeFiles/fssimplenowindow.dir/nownd/fssimplenowindow.cpp.i

public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/nownd/fssimplenowindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/fssimplenowindow.dir/nownd/fssimplenowindow.cpp.s"
	cd /tmp/YSFlight/public/fssimplewindow/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/YSFlight/public/src/fssimplewindow/src/nownd/fssimplenowindow.cpp -o CMakeFiles/fssimplenowindow.dir/nownd/fssimplenowindow.cpp.s

# Object files for target fssimplenowindow
fssimplenowindow_OBJECTS = \
"CMakeFiles/fssimplenowindow.dir/fssimplewindowcommon.cpp.o" \
"CMakeFiles/fssimplenowindow.dir/nownd/fssimplenowindow.cpp.o"

# External object files for target fssimplenowindow
fssimplenowindow_EXTERNAL_OBJECTS =

public/fssimplewindow/src/libfssimplenowindow.a: public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/fssimplewindowcommon.cpp.o
public/fssimplewindow/src/libfssimplenowindow.a: public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/nownd/fssimplenowindow.cpp.o
public/fssimplewindow/src/libfssimplenowindow.a: public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/build.make
public/fssimplewindow/src/libfssimplenowindow.a: public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/tmp/YSFlight/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libfssimplenowindow.a"
	cd /tmp/YSFlight/public/fssimplewindow/src && $(CMAKE_COMMAND) -P CMakeFiles/fssimplenowindow.dir/cmake_clean_target.cmake
	cd /tmp/YSFlight/public/fssimplewindow/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fssimplenowindow.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/build: public/fssimplewindow/src/libfssimplenowindow.a
.PHONY : public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/build

public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/clean:
	cd /tmp/YSFlight/public/fssimplewindow/src && $(CMAKE_COMMAND) -P CMakeFiles/fssimplenowindow.dir/cmake_clean.cmake
.PHONY : public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/clean

public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/depend:
	cd /tmp/YSFlight && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/YSFlight/src /tmp/YSFlight/public/src/fssimplewindow/src /tmp/YSFlight /tmp/YSFlight/public/fssimplewindow/src /tmp/YSFlight/public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : public/fssimplewindow/src/CMakeFiles/fssimplenowindow.dir/depend

