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
include public/fslazywindow/src/CMakeFiles/fslazywindow.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include public/fslazywindow/src/CMakeFiles/fslazywindow.dir/compiler_depend.make

# Include the progress variables for this target.
include public/fslazywindow/src/CMakeFiles/fslazywindow.dir/progress.make

# Include the compile flags for this target's objects.
include public/fslazywindow/src/CMakeFiles/fslazywindow.dir/flags.make

public/fslazywindow/src/CMakeFiles/fslazywindow.dir/codegen:
.PHONY : public/fslazywindow/src/CMakeFiles/fslazywindow.dir/codegen

public/fslazywindow/src/CMakeFiles/fslazywindow.dir/linux_win/fslazywindow.cpp.o: public/fslazywindow/src/CMakeFiles/fslazywindow.dir/flags.make
public/fslazywindow/src/CMakeFiles/fslazywindow.dir/linux_win/fslazywindow.cpp.o: /tmp/YSFlight/public/src/fslazywindow/src/linux_win/fslazywindow.cpp
public/fslazywindow/src/CMakeFiles/fslazywindow.dir/linux_win/fslazywindow.cpp.o: public/fslazywindow/src/CMakeFiles/fslazywindow.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/tmp/YSFlight/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object public/fslazywindow/src/CMakeFiles/fslazywindow.dir/linux_win/fslazywindow.cpp.o"
	cd /tmp/YSFlight/public/fslazywindow/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT public/fslazywindow/src/CMakeFiles/fslazywindow.dir/linux_win/fslazywindow.cpp.o -MF CMakeFiles/fslazywindow.dir/linux_win/fslazywindow.cpp.o.d -o CMakeFiles/fslazywindow.dir/linux_win/fslazywindow.cpp.o -c /tmp/YSFlight/public/src/fslazywindow/src/linux_win/fslazywindow.cpp

public/fslazywindow/src/CMakeFiles/fslazywindow.dir/linux_win/fslazywindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/fslazywindow.dir/linux_win/fslazywindow.cpp.i"
	cd /tmp/YSFlight/public/fslazywindow/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/YSFlight/public/src/fslazywindow/src/linux_win/fslazywindow.cpp > CMakeFiles/fslazywindow.dir/linux_win/fslazywindow.cpp.i

public/fslazywindow/src/CMakeFiles/fslazywindow.dir/linux_win/fslazywindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/fslazywindow.dir/linux_win/fslazywindow.cpp.s"
	cd /tmp/YSFlight/public/fslazywindow/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/YSFlight/public/src/fslazywindow/src/linux_win/fslazywindow.cpp -o CMakeFiles/fslazywindow.dir/linux_win/fslazywindow.cpp.s

public/fslazywindow/src/CMakeFiles/fslazywindow.dir/fslazywindowcommon.cpp.o: public/fslazywindow/src/CMakeFiles/fslazywindow.dir/flags.make
public/fslazywindow/src/CMakeFiles/fslazywindow.dir/fslazywindowcommon.cpp.o: /tmp/YSFlight/public/src/fslazywindow/src/fslazywindowcommon.cpp
public/fslazywindow/src/CMakeFiles/fslazywindow.dir/fslazywindowcommon.cpp.o: public/fslazywindow/src/CMakeFiles/fslazywindow.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/tmp/YSFlight/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object public/fslazywindow/src/CMakeFiles/fslazywindow.dir/fslazywindowcommon.cpp.o"
	cd /tmp/YSFlight/public/fslazywindow/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT public/fslazywindow/src/CMakeFiles/fslazywindow.dir/fslazywindowcommon.cpp.o -MF CMakeFiles/fslazywindow.dir/fslazywindowcommon.cpp.o.d -o CMakeFiles/fslazywindow.dir/fslazywindowcommon.cpp.o -c /tmp/YSFlight/public/src/fslazywindow/src/fslazywindowcommon.cpp

public/fslazywindow/src/CMakeFiles/fslazywindow.dir/fslazywindowcommon.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/fslazywindow.dir/fslazywindowcommon.cpp.i"
	cd /tmp/YSFlight/public/fslazywindow/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/YSFlight/public/src/fslazywindow/src/fslazywindowcommon.cpp > CMakeFiles/fslazywindow.dir/fslazywindowcommon.cpp.i

public/fslazywindow/src/CMakeFiles/fslazywindow.dir/fslazywindowcommon.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/fslazywindow.dir/fslazywindowcommon.cpp.s"
	cd /tmp/YSFlight/public/fslazywindow/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/YSFlight/public/src/fslazywindow/src/fslazywindowcommon.cpp -o CMakeFiles/fslazywindow.dir/fslazywindowcommon.cpp.s

# Object files for target fslazywindow
fslazywindow_OBJECTS = \
"CMakeFiles/fslazywindow.dir/linux_win/fslazywindow.cpp.o" \
"CMakeFiles/fslazywindow.dir/fslazywindowcommon.cpp.o"

# External object files for target fslazywindow
fslazywindow_EXTERNAL_OBJECTS =

public/fslazywindow/src/libfslazywindow.a: public/fslazywindow/src/CMakeFiles/fslazywindow.dir/linux_win/fslazywindow.cpp.o
public/fslazywindow/src/libfslazywindow.a: public/fslazywindow/src/CMakeFiles/fslazywindow.dir/fslazywindowcommon.cpp.o
public/fslazywindow/src/libfslazywindow.a: public/fslazywindow/src/CMakeFiles/fslazywindow.dir/build.make
public/fslazywindow/src/libfslazywindow.a: public/fslazywindow/src/CMakeFiles/fslazywindow.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/tmp/YSFlight/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libfslazywindow.a"
	cd /tmp/YSFlight/public/fslazywindow/src && $(CMAKE_COMMAND) -P CMakeFiles/fslazywindow.dir/cmake_clean_target.cmake
	cd /tmp/YSFlight/public/fslazywindow/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fslazywindow.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
public/fslazywindow/src/CMakeFiles/fslazywindow.dir/build: public/fslazywindow/src/libfslazywindow.a
.PHONY : public/fslazywindow/src/CMakeFiles/fslazywindow.dir/build

public/fslazywindow/src/CMakeFiles/fslazywindow.dir/clean:
	cd /tmp/YSFlight/public/fslazywindow/src && $(CMAKE_COMMAND) -P CMakeFiles/fslazywindow.dir/cmake_clean.cmake
.PHONY : public/fslazywindow/src/CMakeFiles/fslazywindow.dir/clean

public/fslazywindow/src/CMakeFiles/fslazywindow.dir/depend:
	cd /tmp/YSFlight && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/YSFlight/src /tmp/YSFlight/public/src/fslazywindow/src /tmp/YSFlight /tmp/YSFlight/public/fslazywindow/src /tmp/YSFlight/public/fslazywindow/src/CMakeFiles/fslazywindow.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : public/fslazywindow/src/CMakeFiles/fslazywindow.dir/depend

