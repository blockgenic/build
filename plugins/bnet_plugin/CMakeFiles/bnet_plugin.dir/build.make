# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/eos-n1/eos

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/eos-n1/eos/build

# Include any dependencies generated for this target.
include plugins/bnet_plugin/CMakeFiles/bnet_plugin.dir/depend.make

# Include the progress variables for this target.
include plugins/bnet_plugin/CMakeFiles/bnet_plugin.dir/progress.make

# Include the compile flags for this target's objects.
include plugins/bnet_plugin/CMakeFiles/bnet_plugin.dir/flags.make

plugins/bnet_plugin/CMakeFiles/bnet_plugin.dir/bnet_plugin.cpp.o: plugins/bnet_plugin/CMakeFiles/bnet_plugin.dir/flags.make
plugins/bnet_plugin/CMakeFiles/bnet_plugin.dir/bnet_plugin.cpp.o: ../plugins/bnet_plugin/bnet_plugin.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eos-n1/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object plugins/bnet_plugin/CMakeFiles/bnet_plugin.dir/bnet_plugin.cpp.o"
	cd /home/eos-n1/eos/build/plugins/bnet_plugin && /usr/bin/clang++-4.0   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bnet_plugin.dir/bnet_plugin.cpp.o -c /home/eos-n1/eos/plugins/bnet_plugin/bnet_plugin.cpp

plugins/bnet_plugin/CMakeFiles/bnet_plugin.dir/bnet_plugin.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bnet_plugin.dir/bnet_plugin.cpp.i"
	cd /home/eos-n1/eos/build/plugins/bnet_plugin && /usr/bin/clang++-4.0  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eos-n1/eos/plugins/bnet_plugin/bnet_plugin.cpp > CMakeFiles/bnet_plugin.dir/bnet_plugin.cpp.i

plugins/bnet_plugin/CMakeFiles/bnet_plugin.dir/bnet_plugin.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bnet_plugin.dir/bnet_plugin.cpp.s"
	cd /home/eos-n1/eos/build/plugins/bnet_plugin && /usr/bin/clang++-4.0  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eos-n1/eos/plugins/bnet_plugin/bnet_plugin.cpp -o CMakeFiles/bnet_plugin.dir/bnet_plugin.cpp.s

plugins/bnet_plugin/CMakeFiles/bnet_plugin.dir/bnet_plugin.cpp.o.requires:

.PHONY : plugins/bnet_plugin/CMakeFiles/bnet_plugin.dir/bnet_plugin.cpp.o.requires

plugins/bnet_plugin/CMakeFiles/bnet_plugin.dir/bnet_plugin.cpp.o.provides: plugins/bnet_plugin/CMakeFiles/bnet_plugin.dir/bnet_plugin.cpp.o.requires
	$(MAKE) -f plugins/bnet_plugin/CMakeFiles/bnet_plugin.dir/build.make plugins/bnet_plugin/CMakeFiles/bnet_plugin.dir/bnet_plugin.cpp.o.provides.build
.PHONY : plugins/bnet_plugin/CMakeFiles/bnet_plugin.dir/bnet_plugin.cpp.o.provides

plugins/bnet_plugin/CMakeFiles/bnet_plugin.dir/bnet_plugin.cpp.o.provides.build: plugins/bnet_plugin/CMakeFiles/bnet_plugin.dir/bnet_plugin.cpp.o


# Object files for target bnet_plugin
bnet_plugin_OBJECTS = \
"CMakeFiles/bnet_plugin.dir/bnet_plugin.cpp.o"

# External object files for target bnet_plugin
bnet_plugin_EXTERNAL_OBJECTS =

plugins/bnet_plugin/libbnet_plugin.a: plugins/bnet_plugin/CMakeFiles/bnet_plugin.dir/bnet_plugin.cpp.o
plugins/bnet_plugin/libbnet_plugin.a: plugins/bnet_plugin/CMakeFiles/bnet_plugin.dir/build.make
plugins/bnet_plugin/libbnet_plugin.a: plugins/bnet_plugin/CMakeFiles/bnet_plugin.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/eos-n1/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libbnet_plugin.a"
	cd /home/eos-n1/eos/build/plugins/bnet_plugin && $(CMAKE_COMMAND) -P CMakeFiles/bnet_plugin.dir/cmake_clean_target.cmake
	cd /home/eos-n1/eos/build/plugins/bnet_plugin && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bnet_plugin.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
plugins/bnet_plugin/CMakeFiles/bnet_plugin.dir/build: plugins/bnet_plugin/libbnet_plugin.a

.PHONY : plugins/bnet_plugin/CMakeFiles/bnet_plugin.dir/build

plugins/bnet_plugin/CMakeFiles/bnet_plugin.dir/requires: plugins/bnet_plugin/CMakeFiles/bnet_plugin.dir/bnet_plugin.cpp.o.requires

.PHONY : plugins/bnet_plugin/CMakeFiles/bnet_plugin.dir/requires

plugins/bnet_plugin/CMakeFiles/bnet_plugin.dir/clean:
	cd /home/eos-n1/eos/build/plugins/bnet_plugin && $(CMAKE_COMMAND) -P CMakeFiles/bnet_plugin.dir/cmake_clean.cmake
.PHONY : plugins/bnet_plugin/CMakeFiles/bnet_plugin.dir/clean

plugins/bnet_plugin/CMakeFiles/bnet_plugin.dir/depend:
	cd /home/eos-n1/eos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/eos-n1/eos /home/eos-n1/eos/plugins/bnet_plugin /home/eos-n1/eos/build /home/eos-n1/eos/build/plugins/bnet_plugin /home/eos-n1/eos/build/plugins/bnet_plugin/CMakeFiles/bnet_plugin.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : plugins/bnet_plugin/CMakeFiles/bnet_plugin.dir/depend

