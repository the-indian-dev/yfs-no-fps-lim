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
include vehicle/CMakeFiles/ysflight_vehicle.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include vehicle/CMakeFiles/ysflight_vehicle.dir/compiler_depend.make

# Include the progress variables for this target.
include vehicle/CMakeFiles/ysflight_vehicle.dir/progress.make

# Include the compile flags for this target's objects.
include vehicle/CMakeFiles/ysflight_vehicle.dir/flags.make

vehicle/CMakeFiles/ysflight_vehicle.dir/codegen:
.PHONY : vehicle/CMakeFiles/ysflight_vehicle.dir/codegen

vehicle/CMakeFiles/ysflight_vehicle.dir/fsairplaneproperty.cpp.o: vehicle/CMakeFiles/ysflight_vehicle.dir/flags.make
vehicle/CMakeFiles/ysflight_vehicle.dir/fsairplaneproperty.cpp.o: /tmp/YSFlight/src/vehicle/fsairplaneproperty.cpp
vehicle/CMakeFiles/ysflight_vehicle.dir/fsairplaneproperty.cpp.o: vehicle/CMakeFiles/ysflight_vehicle.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/tmp/YSFlight/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object vehicle/CMakeFiles/ysflight_vehicle.dir/fsairplaneproperty.cpp.o"
	cd /tmp/YSFlight/vehicle && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT vehicle/CMakeFiles/ysflight_vehicle.dir/fsairplaneproperty.cpp.o -MF CMakeFiles/ysflight_vehicle.dir/fsairplaneproperty.cpp.o.d -o CMakeFiles/ysflight_vehicle.dir/fsairplaneproperty.cpp.o -c /tmp/YSFlight/src/vehicle/fsairplaneproperty.cpp

vehicle/CMakeFiles/ysflight_vehicle.dir/fsairplaneproperty.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ysflight_vehicle.dir/fsairplaneproperty.cpp.i"
	cd /tmp/YSFlight/vehicle && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/YSFlight/src/vehicle/fsairplaneproperty.cpp > CMakeFiles/ysflight_vehicle.dir/fsairplaneproperty.cpp.i

vehicle/CMakeFiles/ysflight_vehicle.dir/fsairplaneproperty.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ysflight_vehicle.dir/fsairplaneproperty.cpp.s"
	cd /tmp/YSFlight/vehicle && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/YSFlight/src/vehicle/fsairplaneproperty.cpp -o CMakeFiles/ysflight_vehicle.dir/fsairplaneproperty.cpp.s

vehicle/CMakeFiles/ysflight_vehicle.dir/fsgroundproperty.cpp.o: vehicle/CMakeFiles/ysflight_vehicle.dir/flags.make
vehicle/CMakeFiles/ysflight_vehicle.dir/fsgroundproperty.cpp.o: /tmp/YSFlight/src/vehicle/fsgroundproperty.cpp
vehicle/CMakeFiles/ysflight_vehicle.dir/fsgroundproperty.cpp.o: vehicle/CMakeFiles/ysflight_vehicle.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/tmp/YSFlight/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object vehicle/CMakeFiles/ysflight_vehicle.dir/fsgroundproperty.cpp.o"
	cd /tmp/YSFlight/vehicle && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT vehicle/CMakeFiles/ysflight_vehicle.dir/fsgroundproperty.cpp.o -MF CMakeFiles/ysflight_vehicle.dir/fsgroundproperty.cpp.o.d -o CMakeFiles/ysflight_vehicle.dir/fsgroundproperty.cpp.o -c /tmp/YSFlight/src/vehicle/fsgroundproperty.cpp

vehicle/CMakeFiles/ysflight_vehicle.dir/fsgroundproperty.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ysflight_vehicle.dir/fsgroundproperty.cpp.i"
	cd /tmp/YSFlight/vehicle && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/YSFlight/src/vehicle/fsgroundproperty.cpp > CMakeFiles/ysflight_vehicle.dir/fsgroundproperty.cpp.i

vehicle/CMakeFiles/ysflight_vehicle.dir/fsgroundproperty.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ysflight_vehicle.dir/fsgroundproperty.cpp.s"
	cd /tmp/YSFlight/vehicle && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/YSFlight/src/vehicle/fsgroundproperty.cpp -o CMakeFiles/ysflight_vehicle.dir/fsgroundproperty.cpp.s

vehicle/CMakeFiles/ysflight_vehicle.dir/fsproperty.cpp.o: vehicle/CMakeFiles/ysflight_vehicle.dir/flags.make
vehicle/CMakeFiles/ysflight_vehicle.dir/fsproperty.cpp.o: /tmp/YSFlight/src/vehicle/fsproperty.cpp
vehicle/CMakeFiles/ysflight_vehicle.dir/fsproperty.cpp.o: vehicle/CMakeFiles/ysflight_vehicle.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/tmp/YSFlight/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object vehicle/CMakeFiles/ysflight_vehicle.dir/fsproperty.cpp.o"
	cd /tmp/YSFlight/vehicle && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT vehicle/CMakeFiles/ysflight_vehicle.dir/fsproperty.cpp.o -MF CMakeFiles/ysflight_vehicle.dir/fsproperty.cpp.o.d -o CMakeFiles/ysflight_vehicle.dir/fsproperty.cpp.o -c /tmp/YSFlight/src/vehicle/fsproperty.cpp

vehicle/CMakeFiles/ysflight_vehicle.dir/fsproperty.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ysflight_vehicle.dir/fsproperty.cpp.i"
	cd /tmp/YSFlight/vehicle && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/YSFlight/src/vehicle/fsproperty.cpp > CMakeFiles/ysflight_vehicle.dir/fsproperty.cpp.i

vehicle/CMakeFiles/ysflight_vehicle.dir/fsproperty.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ysflight_vehicle.dir/fsproperty.cpp.s"
	cd /tmp/YSFlight/vehicle && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/YSFlight/src/vehicle/fsproperty.cpp -o CMakeFiles/ysflight_vehicle.dir/fsproperty.cpp.s

vehicle/CMakeFiles/ysflight_vehicle.dir/fsvehicleproperty.cpp.o: vehicle/CMakeFiles/ysflight_vehicle.dir/flags.make
vehicle/CMakeFiles/ysflight_vehicle.dir/fsvehicleproperty.cpp.o: /tmp/YSFlight/src/vehicle/fsvehicleproperty.cpp
vehicle/CMakeFiles/ysflight_vehicle.dir/fsvehicleproperty.cpp.o: vehicle/CMakeFiles/ysflight_vehicle.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/tmp/YSFlight/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object vehicle/CMakeFiles/ysflight_vehicle.dir/fsvehicleproperty.cpp.o"
	cd /tmp/YSFlight/vehicle && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT vehicle/CMakeFiles/ysflight_vehicle.dir/fsvehicleproperty.cpp.o -MF CMakeFiles/ysflight_vehicle.dir/fsvehicleproperty.cpp.o.d -o CMakeFiles/ysflight_vehicle.dir/fsvehicleproperty.cpp.o -c /tmp/YSFlight/src/vehicle/fsvehicleproperty.cpp

vehicle/CMakeFiles/ysflight_vehicle.dir/fsvehicleproperty.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ysflight_vehicle.dir/fsvehicleproperty.cpp.i"
	cd /tmp/YSFlight/vehicle && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/YSFlight/src/vehicle/fsvehicleproperty.cpp > CMakeFiles/ysflight_vehicle.dir/fsvehicleproperty.cpp.i

vehicle/CMakeFiles/ysflight_vehicle.dir/fsvehicleproperty.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ysflight_vehicle.dir/fsvehicleproperty.cpp.s"
	cd /tmp/YSFlight/vehicle && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/YSFlight/src/vehicle/fsvehicleproperty.cpp -o CMakeFiles/ysflight_vehicle.dir/fsvehicleproperty.cpp.s

vehicle/CMakeFiles/ysflight_vehicle.dir/fsnavaid.cpp.o: vehicle/CMakeFiles/ysflight_vehicle.dir/flags.make
vehicle/CMakeFiles/ysflight_vehicle.dir/fsnavaid.cpp.o: /tmp/YSFlight/src/vehicle/fsnavaid.cpp
vehicle/CMakeFiles/ysflight_vehicle.dir/fsnavaid.cpp.o: vehicle/CMakeFiles/ysflight_vehicle.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/tmp/YSFlight/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object vehicle/CMakeFiles/ysflight_vehicle.dir/fsnavaid.cpp.o"
	cd /tmp/YSFlight/vehicle && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT vehicle/CMakeFiles/ysflight_vehicle.dir/fsnavaid.cpp.o -MF CMakeFiles/ysflight_vehicle.dir/fsnavaid.cpp.o.d -o CMakeFiles/ysflight_vehicle.dir/fsnavaid.cpp.o -c /tmp/YSFlight/src/vehicle/fsnavaid.cpp

vehicle/CMakeFiles/ysflight_vehicle.dir/fsnavaid.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ysflight_vehicle.dir/fsnavaid.cpp.i"
	cd /tmp/YSFlight/vehicle && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/YSFlight/src/vehicle/fsnavaid.cpp > CMakeFiles/ysflight_vehicle.dir/fsnavaid.cpp.i

vehicle/CMakeFiles/ysflight_vehicle.dir/fsnavaid.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ysflight_vehicle.dir/fsnavaid.cpp.s"
	cd /tmp/YSFlight/vehicle && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/YSFlight/src/vehicle/fsnavaid.cpp -o CMakeFiles/ysflight_vehicle.dir/fsnavaid.cpp.s

# Object files for target ysflight_vehicle
ysflight_vehicle_OBJECTS = \
"CMakeFiles/ysflight_vehicle.dir/fsairplaneproperty.cpp.o" \
"CMakeFiles/ysflight_vehicle.dir/fsgroundproperty.cpp.o" \
"CMakeFiles/ysflight_vehicle.dir/fsproperty.cpp.o" \
"CMakeFiles/ysflight_vehicle.dir/fsvehicleproperty.cpp.o" \
"CMakeFiles/ysflight_vehicle.dir/fsnavaid.cpp.o"

# External object files for target ysflight_vehicle
ysflight_vehicle_EXTERNAL_OBJECTS =

vehicle/libysflight_vehicle.a: vehicle/CMakeFiles/ysflight_vehicle.dir/fsairplaneproperty.cpp.o
vehicle/libysflight_vehicle.a: vehicle/CMakeFiles/ysflight_vehicle.dir/fsgroundproperty.cpp.o
vehicle/libysflight_vehicle.a: vehicle/CMakeFiles/ysflight_vehicle.dir/fsproperty.cpp.o
vehicle/libysflight_vehicle.a: vehicle/CMakeFiles/ysflight_vehicle.dir/fsvehicleproperty.cpp.o
vehicle/libysflight_vehicle.a: vehicle/CMakeFiles/ysflight_vehicle.dir/fsnavaid.cpp.o
vehicle/libysflight_vehicle.a: vehicle/CMakeFiles/ysflight_vehicle.dir/build.make
vehicle/libysflight_vehicle.a: vehicle/CMakeFiles/ysflight_vehicle.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/tmp/YSFlight/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX static library libysflight_vehicle.a"
	cd /tmp/YSFlight/vehicle && $(CMAKE_COMMAND) -P CMakeFiles/ysflight_vehicle.dir/cmake_clean_target.cmake
	cd /tmp/YSFlight/vehicle && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ysflight_vehicle.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
vehicle/CMakeFiles/ysflight_vehicle.dir/build: vehicle/libysflight_vehicle.a
.PHONY : vehicle/CMakeFiles/ysflight_vehicle.dir/build

vehicle/CMakeFiles/ysflight_vehicle.dir/clean:
	cd /tmp/YSFlight/vehicle && $(CMAKE_COMMAND) -P CMakeFiles/ysflight_vehicle.dir/cmake_clean.cmake
.PHONY : vehicle/CMakeFiles/ysflight_vehicle.dir/clean

vehicle/CMakeFiles/ysflight_vehicle.dir/depend:
	cd /tmp/YSFlight && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/YSFlight/src /tmp/YSFlight/src/vehicle /tmp/YSFlight /tmp/YSFlight/vehicle /tmp/YSFlight/vehicle/CMakeFiles/ysflight_vehicle.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : vehicle/CMakeFiles/ysflight_vehicle.dir/depend

