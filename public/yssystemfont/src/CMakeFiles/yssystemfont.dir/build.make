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
include public/yssystemfont/src/CMakeFiles/yssystemfont.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include public/yssystemfont/src/CMakeFiles/yssystemfont.dir/compiler_depend.make

# Include the progress variables for this target.
include public/yssystemfont/src/CMakeFiles/yssystemfont.dir/progress.make

# Include the compile flags for this target's objects.
include public/yssystemfont/src/CMakeFiles/yssystemfont.dir/flags.make

public/yssystemfont/src/CMakeFiles/yssystemfont.dir/codegen:
.PHONY : public/yssystemfont/src/CMakeFiles/yssystemfont.dir/codegen

public/yssystemfont/src/CMakeFiles/yssystemfont.dir/linux/ysunixsystemfont.cpp.o: public/yssystemfont/src/CMakeFiles/yssystemfont.dir/flags.make
public/yssystemfont/src/CMakeFiles/yssystemfont.dir/linux/ysunixsystemfont.cpp.o: /tmp/YSFlight/public/src/yssystemfont/src/linux/ysunixsystemfont.cpp
public/yssystemfont/src/CMakeFiles/yssystemfont.dir/linux/ysunixsystemfont.cpp.o: public/yssystemfont/src/CMakeFiles/yssystemfont.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/tmp/YSFlight/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object public/yssystemfont/src/CMakeFiles/yssystemfont.dir/linux/ysunixsystemfont.cpp.o"
	cd /tmp/YSFlight/public/yssystemfont/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT public/yssystemfont/src/CMakeFiles/yssystemfont.dir/linux/ysunixsystemfont.cpp.o -MF CMakeFiles/yssystemfont.dir/linux/ysunixsystemfont.cpp.o.d -o CMakeFiles/yssystemfont.dir/linux/ysunixsystemfont.cpp.o -c /tmp/YSFlight/public/src/yssystemfont/src/linux/ysunixsystemfont.cpp

public/yssystemfont/src/CMakeFiles/yssystemfont.dir/linux/ysunixsystemfont.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/yssystemfont.dir/linux/ysunixsystemfont.cpp.i"
	cd /tmp/YSFlight/public/yssystemfont/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/YSFlight/public/src/yssystemfont/src/linux/ysunixsystemfont.cpp > CMakeFiles/yssystemfont.dir/linux/ysunixsystemfont.cpp.i

public/yssystemfont/src/CMakeFiles/yssystemfont.dir/linux/ysunixsystemfont.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/yssystemfont.dir/linux/ysunixsystemfont.cpp.s"
	cd /tmp/YSFlight/public/yssystemfont/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/YSFlight/public/src/yssystemfont/src/linux/ysunixsystemfont.cpp -o CMakeFiles/yssystemfont.dir/linux/ysunixsystemfont.cpp.s

# Object files for target yssystemfont
yssystemfont_OBJECTS = \
"CMakeFiles/yssystemfont.dir/linux/ysunixsystemfont.cpp.o"

# External object files for target yssystemfont
yssystemfont_EXTERNAL_OBJECTS =

public/yssystemfont/src/libyssystemfont.a: public/yssystemfont/src/CMakeFiles/yssystemfont.dir/linux/ysunixsystemfont.cpp.o
public/yssystemfont/src/libyssystemfont.a: public/yssystemfont/src/CMakeFiles/yssystemfont.dir/build.make
public/yssystemfont/src/libyssystemfont.a: public/yssystemfont/src/CMakeFiles/yssystemfont.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/tmp/YSFlight/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libyssystemfont.a"
	cd /tmp/YSFlight/public/yssystemfont/src && $(CMAKE_COMMAND) -P CMakeFiles/yssystemfont.dir/cmake_clean_target.cmake
	cd /tmp/YSFlight/public/yssystemfont/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/yssystemfont.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
public/yssystemfont/src/CMakeFiles/yssystemfont.dir/build: public/yssystemfont/src/libyssystemfont.a
.PHONY : public/yssystemfont/src/CMakeFiles/yssystemfont.dir/build

public/yssystemfont/src/CMakeFiles/yssystemfont.dir/clean:
	cd /tmp/YSFlight/public/yssystemfont/src && $(CMAKE_COMMAND) -P CMakeFiles/yssystemfont.dir/cmake_clean.cmake
.PHONY : public/yssystemfont/src/CMakeFiles/yssystemfont.dir/clean

public/yssystemfont/src/CMakeFiles/yssystemfont.dir/depend:
	cd /tmp/YSFlight && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/YSFlight/src /tmp/YSFlight/public/src/yssystemfont/src /tmp/YSFlight /tmp/YSFlight/public/yssystemfont/src /tmp/YSFlight/public/yssystemfont/src/CMakeFiles/yssystemfont.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : public/yssystemfont/src/CMakeFiles/yssystemfont.dir/depend

