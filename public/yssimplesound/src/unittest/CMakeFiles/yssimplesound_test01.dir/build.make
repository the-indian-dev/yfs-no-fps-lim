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
include public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_test01.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_test01.dir/compiler_depend.make

# Include the progress variables for this target.
include public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_test01.dir/progress.make

# Include the compile flags for this target's objects.
include public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_test01.dir/flags.make

public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_test01.dir/codegen:
.PHONY : public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_test01.dir/codegen

public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_test01.dir/main.cpp.o: public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_test01.dir/flags.make
public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_test01.dir/main.cpp.o: /tmp/YSFlight/public/src/yssimplesound/src/unittest/main.cpp
public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_test01.dir/main.cpp.o: public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_test01.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/tmp/YSFlight/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_test01.dir/main.cpp.o"
	cd /tmp/YSFlight/public/yssimplesound/src/unittest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_test01.dir/main.cpp.o -MF CMakeFiles/yssimplesound_test01.dir/main.cpp.o.d -o CMakeFiles/yssimplesound_test01.dir/main.cpp.o -c /tmp/YSFlight/public/src/yssimplesound/src/unittest/main.cpp

public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_test01.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/yssimplesound_test01.dir/main.cpp.i"
	cd /tmp/YSFlight/public/yssimplesound/src/unittest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/YSFlight/public/src/yssimplesound/src/unittest/main.cpp > CMakeFiles/yssimplesound_test01.dir/main.cpp.i

public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_test01.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/yssimplesound_test01.dir/main.cpp.s"
	cd /tmp/YSFlight/public/yssimplesound/src/unittest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/YSFlight/public/src/yssimplesound/src/unittest/main.cpp -o CMakeFiles/yssimplesound_test01.dir/main.cpp.s

# Object files for target yssimplesound_test01
yssimplesound_test01_OBJECTS = \
"CMakeFiles/yssimplesound_test01.dir/main.cpp.o"

# External object files for target yssimplesound_test01
yssimplesound_test01_EXTERNAL_OBJECTS =

public/yssimplesound/src/unittest/yssimplesound_test01: public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_test01.dir/main.cpp.o
public/yssimplesound/src/unittest/yssimplesound_test01: public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_test01.dir/build.make
public/yssimplesound/src/unittest/yssimplesound_test01: public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_test01.dir/compiler_depend.ts
public/yssimplesound/src/unittest/yssimplesound_test01: public/fssimplewindow/src/libfssimplewindow.a
public/yssimplesound/src/unittest/yssimplesound_test01: public/yssimplesound/src/libyssimplesound.a
public/yssimplesound/src/unittest/yssimplesound_test01: public/yssimplesound/src/libyssimplesound_linux_alsa.a
public/yssimplesound/src/unittest/yssimplesound_test01: /usr/lib/libasound.so
public/yssimplesound/src/unittest/yssimplesound_test01: public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_test01.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/tmp/YSFlight/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable yssimplesound_test01"
	cd /tmp/YSFlight/public/yssimplesound/src/unittest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/yssimplesound_test01.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_test01.dir/build: public/yssimplesound/src/unittest/yssimplesound_test01
.PHONY : public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_test01.dir/build

public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_test01.dir/clean:
	cd /tmp/YSFlight/public/yssimplesound/src/unittest && $(CMAKE_COMMAND) -P CMakeFiles/yssimplesound_test01.dir/cmake_clean.cmake
.PHONY : public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_test01.dir/clean

public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_test01.dir/depend:
	cd /tmp/YSFlight && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/YSFlight/src /tmp/YSFlight/public/src/yssimplesound/src/unittest /tmp/YSFlight /tmp/YSFlight/public/yssimplesound/src/unittest /tmp/YSFlight/public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_test01.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_test01.dir/depend

