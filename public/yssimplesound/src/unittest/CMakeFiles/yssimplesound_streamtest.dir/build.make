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
include public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_streamtest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_streamtest.dir/compiler_depend.make

# Include the progress variables for this target.
include public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_streamtest.dir/progress.make

# Include the compile flags for this target's objects.
include public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_streamtest.dir/flags.make

public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_streamtest.dir/codegen:
.PHONY : public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_streamtest.dir/codegen

public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_streamtest.dir/streamtest.cpp.o: public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_streamtest.dir/flags.make
public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_streamtest.dir/streamtest.cpp.o: /tmp/YSFlight/public/src/yssimplesound/src/unittest/streamtest.cpp
public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_streamtest.dir/streamtest.cpp.o: public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_streamtest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/tmp/YSFlight/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_streamtest.dir/streamtest.cpp.o"
	cd /tmp/YSFlight/public/yssimplesound/src/unittest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_streamtest.dir/streamtest.cpp.o -MF CMakeFiles/yssimplesound_streamtest.dir/streamtest.cpp.o.d -o CMakeFiles/yssimplesound_streamtest.dir/streamtest.cpp.o -c /tmp/YSFlight/public/src/yssimplesound/src/unittest/streamtest.cpp

public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_streamtest.dir/streamtest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/yssimplesound_streamtest.dir/streamtest.cpp.i"
	cd /tmp/YSFlight/public/yssimplesound/src/unittest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/YSFlight/public/src/yssimplesound/src/unittest/streamtest.cpp > CMakeFiles/yssimplesound_streamtest.dir/streamtest.cpp.i

public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_streamtest.dir/streamtest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/yssimplesound_streamtest.dir/streamtest.cpp.s"
	cd /tmp/YSFlight/public/yssimplesound/src/unittest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/YSFlight/public/src/yssimplesound/src/unittest/streamtest.cpp -o CMakeFiles/yssimplesound_streamtest.dir/streamtest.cpp.s

# Object files for target yssimplesound_streamtest
yssimplesound_streamtest_OBJECTS = \
"CMakeFiles/yssimplesound_streamtest.dir/streamtest.cpp.o"

# External object files for target yssimplesound_streamtest
yssimplesound_streamtest_EXTERNAL_OBJECTS =

public/yssimplesound/src/unittest/yssimplesound_streamtest: public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_streamtest.dir/streamtest.cpp.o
public/yssimplesound/src/unittest/yssimplesound_streamtest: public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_streamtest.dir/build.make
public/yssimplesound/src/unittest/yssimplesound_streamtest: public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_streamtest.dir/compiler_depend.ts
public/yssimplesound/src/unittest/yssimplesound_streamtest: public/fssimplewindow/src/libfssimplewindow.a
public/yssimplesound/src/unittest/yssimplesound_streamtest: public/yssimplesound/src/libyssimplesound.a
public/yssimplesound/src/unittest/yssimplesound_streamtest: /usr/lib/libasound.so
public/yssimplesound/src/unittest/yssimplesound_streamtest: public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_streamtest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/tmp/YSFlight/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable yssimplesound_streamtest"
	cd /tmp/YSFlight/public/yssimplesound/src/unittest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/yssimplesound_streamtest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_streamtest.dir/build: public/yssimplesound/src/unittest/yssimplesound_streamtest
.PHONY : public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_streamtest.dir/build

public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_streamtest.dir/clean:
	cd /tmp/YSFlight/public/yssimplesound/src/unittest && $(CMAKE_COMMAND) -P CMakeFiles/yssimplesound_streamtest.dir/cmake_clean.cmake
.PHONY : public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_streamtest.dir/clean

public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_streamtest.dir/depend:
	cd /tmp/YSFlight && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/YSFlight/src /tmp/YSFlight/public/src/yssimplesound/src/unittest /tmp/YSFlight /tmp/YSFlight/public/yssimplesound/src/unittest /tmp/YSFlight/public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_streamtest.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : public/yssimplesound/src/unittest/CMakeFiles/yssimplesound_streamtest.dir/depend

