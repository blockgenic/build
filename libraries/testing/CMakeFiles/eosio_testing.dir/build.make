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
include libraries/testing/CMakeFiles/eosio_testing.dir/depend.make

# Include the progress variables for this target.
include libraries/testing/CMakeFiles/eosio_testing.dir/progress.make

# Include the compile flags for this target's objects.
include libraries/testing/CMakeFiles/eosio_testing.dir/flags.make

libraries/testing/CMakeFiles/eosio_testing.dir/tester.cpp.o: libraries/testing/CMakeFiles/eosio_testing.dir/flags.make
libraries/testing/CMakeFiles/eosio_testing.dir/tester.cpp.o: ../libraries/testing/tester.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eos-n1/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libraries/testing/CMakeFiles/eosio_testing.dir/tester.cpp.o"
	cd /home/eos-n1/eos/build/libraries/testing && /usr/bin/clang++-4.0   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/eosio_testing.dir/tester.cpp.o -c /home/eos-n1/eos/libraries/testing/tester.cpp

libraries/testing/CMakeFiles/eosio_testing.dir/tester.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/eosio_testing.dir/tester.cpp.i"
	cd /home/eos-n1/eos/build/libraries/testing && /usr/bin/clang++-4.0  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eos-n1/eos/libraries/testing/tester.cpp > CMakeFiles/eosio_testing.dir/tester.cpp.i

libraries/testing/CMakeFiles/eosio_testing.dir/tester.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/eosio_testing.dir/tester.cpp.s"
	cd /home/eos-n1/eos/build/libraries/testing && /usr/bin/clang++-4.0  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eos-n1/eos/libraries/testing/tester.cpp -o CMakeFiles/eosio_testing.dir/tester.cpp.s

libraries/testing/CMakeFiles/eosio_testing.dir/tester.cpp.o.requires:

.PHONY : libraries/testing/CMakeFiles/eosio_testing.dir/tester.cpp.o.requires

libraries/testing/CMakeFiles/eosio_testing.dir/tester.cpp.o.provides: libraries/testing/CMakeFiles/eosio_testing.dir/tester.cpp.o.requires
	$(MAKE) -f libraries/testing/CMakeFiles/eosio_testing.dir/build.make libraries/testing/CMakeFiles/eosio_testing.dir/tester.cpp.o.provides.build
.PHONY : libraries/testing/CMakeFiles/eosio_testing.dir/tester.cpp.o.provides

libraries/testing/CMakeFiles/eosio_testing.dir/tester.cpp.o.provides.build: libraries/testing/CMakeFiles/eosio_testing.dir/tester.cpp.o


libraries/testing/CMakeFiles/eosio_testing.dir/tester_network.cpp.o: libraries/testing/CMakeFiles/eosio_testing.dir/flags.make
libraries/testing/CMakeFiles/eosio_testing.dir/tester_network.cpp.o: ../libraries/testing/tester_network.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eos-n1/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object libraries/testing/CMakeFiles/eosio_testing.dir/tester_network.cpp.o"
	cd /home/eos-n1/eos/build/libraries/testing && /usr/bin/clang++-4.0   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/eosio_testing.dir/tester_network.cpp.o -c /home/eos-n1/eos/libraries/testing/tester_network.cpp

libraries/testing/CMakeFiles/eosio_testing.dir/tester_network.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/eosio_testing.dir/tester_network.cpp.i"
	cd /home/eos-n1/eos/build/libraries/testing && /usr/bin/clang++-4.0  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eos-n1/eos/libraries/testing/tester_network.cpp > CMakeFiles/eosio_testing.dir/tester_network.cpp.i

libraries/testing/CMakeFiles/eosio_testing.dir/tester_network.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/eosio_testing.dir/tester_network.cpp.s"
	cd /home/eos-n1/eos/build/libraries/testing && /usr/bin/clang++-4.0  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eos-n1/eos/libraries/testing/tester_network.cpp -o CMakeFiles/eosio_testing.dir/tester_network.cpp.s

libraries/testing/CMakeFiles/eosio_testing.dir/tester_network.cpp.o.requires:

.PHONY : libraries/testing/CMakeFiles/eosio_testing.dir/tester_network.cpp.o.requires

libraries/testing/CMakeFiles/eosio_testing.dir/tester_network.cpp.o.provides: libraries/testing/CMakeFiles/eosio_testing.dir/tester_network.cpp.o.requires
	$(MAKE) -f libraries/testing/CMakeFiles/eosio_testing.dir/build.make libraries/testing/CMakeFiles/eosio_testing.dir/tester_network.cpp.o.provides.build
.PHONY : libraries/testing/CMakeFiles/eosio_testing.dir/tester_network.cpp.o.provides

libraries/testing/CMakeFiles/eosio_testing.dir/tester_network.cpp.o.provides.build: libraries/testing/CMakeFiles/eosio_testing.dir/tester_network.cpp.o


# Object files for target eosio_testing
eosio_testing_OBJECTS = \
"CMakeFiles/eosio_testing.dir/tester.cpp.o" \
"CMakeFiles/eosio_testing.dir/tester_network.cpp.o"

# External object files for target eosio_testing
eosio_testing_EXTERNAL_OBJECTS =

libraries/testing/libeosio_testing.a: libraries/testing/CMakeFiles/eosio_testing.dir/tester.cpp.o
libraries/testing/libeosio_testing.a: libraries/testing/CMakeFiles/eosio_testing.dir/tester_network.cpp.o
libraries/testing/libeosio_testing.a: libraries/testing/CMakeFiles/eosio_testing.dir/build.make
libraries/testing/libeosio_testing.a: libraries/testing/CMakeFiles/eosio_testing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/eos-n1/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libeosio_testing.a"
	cd /home/eos-n1/eos/build/libraries/testing && $(CMAKE_COMMAND) -P CMakeFiles/eosio_testing.dir/cmake_clean_target.cmake
	cd /home/eos-n1/eos/build/libraries/testing && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/eosio_testing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libraries/testing/CMakeFiles/eosio_testing.dir/build: libraries/testing/libeosio_testing.a

.PHONY : libraries/testing/CMakeFiles/eosio_testing.dir/build

libraries/testing/CMakeFiles/eosio_testing.dir/requires: libraries/testing/CMakeFiles/eosio_testing.dir/tester.cpp.o.requires
libraries/testing/CMakeFiles/eosio_testing.dir/requires: libraries/testing/CMakeFiles/eosio_testing.dir/tester_network.cpp.o.requires

.PHONY : libraries/testing/CMakeFiles/eosio_testing.dir/requires

libraries/testing/CMakeFiles/eosio_testing.dir/clean:
	cd /home/eos-n1/eos/build/libraries/testing && $(CMAKE_COMMAND) -P CMakeFiles/eosio_testing.dir/cmake_clean.cmake
.PHONY : libraries/testing/CMakeFiles/eosio_testing.dir/clean

libraries/testing/CMakeFiles/eosio_testing.dir/depend:
	cd /home/eos-n1/eos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/eos-n1/eos /home/eos-n1/eos/libraries/testing /home/eos-n1/eos/build /home/eos-n1/eos/build/libraries/testing /home/eos-n1/eos/build/libraries/testing/CMakeFiles/eosio_testing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libraries/testing/CMakeFiles/eosio_testing.dir/depend

