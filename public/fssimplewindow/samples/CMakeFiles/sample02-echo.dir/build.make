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
include public/fssimplewindow/samples/CMakeFiles/sample02-echo.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include public/fssimplewindow/samples/CMakeFiles/sample02-echo.dir/compiler_depend.make

# Include the progress variables for this target.
include public/fssimplewindow/samples/CMakeFiles/sample02-echo.dir/progress.make

# Include the compile flags for this target's objects.
include public/fssimplewindow/samples/CMakeFiles/sample02-echo.dir/flags.make

public/fssimplewindow/samples/CMakeFiles/sample02-echo.dir/codegen:
.PHONY : public/fssimplewindow/samples/CMakeFiles/sample02-echo.dir/codegen

public/fssimplewindow/samples/CMakeFiles/sample02-echo.dir/sample02-echo/sample02-echo.cpp.o: public/fssimplewindow/samples/CMakeFiles/sample02-echo.dir/flags.make
public/fssimplewindow/samples/CMakeFiles/sample02-echo.dir/sample02-echo/sample02-echo.cpp.o: /tmp/YSFlight/public/src/fssimplewindow/samples/sample02-echo/sample02-echo.cpp
public/fssimplewindow/samples/CMakeFiles/sample02-echo.dir/sample02-echo/sample02-echo.cpp.o: public/fssimplewindow/samples/CMakeFiles/sample02-echo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/tmp/YSFlight/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object public/fssimplewindow/samples/CMakeFiles/sample02-echo.dir/sample02-echo/sample02-echo.cpp.o"
	cd /tmp/YSFlight/public/fssimplewindow/samples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT public/fssimplewindow/samples/CMakeFiles/sample02-echo.dir/sample02-echo/sample02-echo.cpp.o -MF CMakeFiles/sample02-echo.dir/sample02-echo/sample02-echo.cpp.o.d -o CMakeFiles/sample02-echo.dir/sample02-echo/sample02-echo.cpp.o -c /tmp/YSFlight/public/src/fssimplewindow/samples/sample02-echo/sample02-echo.cpp

public/fssimplewindow/samples/CMakeFiles/sample02-echo.dir/sample02-echo/sample02-echo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/sample02-echo.dir/sample02-echo/sample02-echo.cpp.i"
	cd /tmp/YSFlight/public/fssimplewindow/samples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/YSFlight/public/src/fssimplewindow/samples/sample02-echo/sample02-echo.cpp > CMakeFiles/sample02-echo.dir/sample02-echo/sample02-echo.cpp.i

public/fssimplewindow/samples/CMakeFiles/sample02-echo.dir/sample02-echo/sample02-echo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/sample02-echo.dir/sample02-echo/sample02-echo.cpp.s"
	cd /tmp/YSFlight/public/fssimplewindow/samples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/YSFlight/public/src/fssimplewindow/samples/sample02-echo/sample02-echo.cpp -o CMakeFiles/sample02-echo.dir/sample02-echo/sample02-echo.cpp.s

# Object files for target sample02-echo
sample02__echo_OBJECTS = \
"CMakeFiles/sample02-echo.dir/sample02-echo/sample02-echo.cpp.o"

# External object files for target sample02-echo
sample02__echo_EXTERNAL_OBJECTS =

public/fssimplewindow/samples/sample02-echo: public/fssimplewindow/samples/CMakeFiles/sample02-echo.dir/sample02-echo/sample02-echo.cpp.o
public/fssimplewindow/samples/sample02-echo: public/fssimplewindow/samples/CMakeFiles/sample02-echo.dir/build.make
public/fssimplewindow/samples/sample02-echo: public/fssimplewindow/samples/CMakeFiles/sample02-echo.dir/compiler_depend.ts
public/fssimplewindow/samples/sample02-echo: public/fssimplewindow/src/libfssimplewindow.a
public/fssimplewindow/samples/sample02-echo: public/ysbitmapfont/src/libysbitmapfont.a
public/fssimplewindow/samples/sample02-echo: public/ysgl/src/libysgl.a
public/fssimplewindow/samples/sample02-echo: public/fssimplewindow/samples/CMakeFiles/sample02-echo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/tmp/YSFlight/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sample02-echo"
	cd /tmp/YSFlight/public/fssimplewindow/samples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sample02-echo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
public/fssimplewindow/samples/CMakeFiles/sample02-echo.dir/build: public/fssimplewindow/samples/sample02-echo
.PHONY : public/fssimplewindow/samples/CMakeFiles/sample02-echo.dir/build

public/fssimplewindow/samples/CMakeFiles/sample02-echo.dir/clean:
	cd /tmp/YSFlight/public/fssimplewindow/samples && $(CMAKE_COMMAND) -P CMakeFiles/sample02-echo.dir/cmake_clean.cmake
.PHONY : public/fssimplewindow/samples/CMakeFiles/sample02-echo.dir/clean

public/fssimplewindow/samples/CMakeFiles/sample02-echo.dir/depend:
	cd /tmp/YSFlight && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/YSFlight/src /tmp/YSFlight/public/src/fssimplewindow/samples /tmp/YSFlight /tmp/YSFlight/public/fssimplewindow/samples /tmp/YSFlight/public/fssimplewindow/samples/CMakeFiles/sample02-echo.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : public/fssimplewindow/samples/CMakeFiles/sample02-echo.dir/depend

