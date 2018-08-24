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

# Utility rule file for exchange.

# Include the progress variables for this target.
include contracts/exchange/CMakeFiles/exchange.dir/progress.make

contracts/exchange/CMakeFiles/exchange: contracts/exchange/exchange.wast.hpp
contracts/exchange/CMakeFiles/exchange: contracts/exchange/exchange.abi.hpp
contracts/exchange/CMakeFiles/exchange: contracts/exchange/exchange.wasm


contracts/exchange/exchange.wast.hpp: contracts/exchange/exchange.wast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/eos-n1/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating exchange.wast.hpp"
	cd /home/eos-n1/eos/build/contracts/exchange && echo "const char* const exchange_wast = R\"=====(" > /home/eos-n1/eos/build/contracts/exchange/exchange.wast.hpp
	cd /home/eos-n1/eos/build/contracts/exchange && cat /home/eos-n1/eos/build/contracts/exchange/exchange.wast >> /home/eos-n1/eos/build/contracts/exchange/exchange.wast.hpp
	cd /home/eos-n1/eos/build/contracts/exchange && echo ")=====\";" >> /home/eos-n1/eos/build/contracts/exchange/exchange.wast.hpp

contracts/exchange/exchange.abi.hpp: contracts/exchange/exchange.abi
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/eos-n1/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating exchange.abi.hpp"
	cd /home/eos-n1/eos/build/contracts/exchange && echo "const char* const exchange_abi = R\"=====(" > /home/eos-n1/eos/build/contracts/exchange/exchange.abi.hpp
	cd /home/eos-n1/eos/build/contracts/exchange && cat /home/eos-n1/eos/build/contracts/exchange/exchange.abi >> /home/eos-n1/eos/build/contracts/exchange/exchange.abi.hpp
	cd /home/eos-n1/eos/build/contracts/exchange && echo ")=====\";" >> /home/eos-n1/eos/build/contracts/exchange/exchange.abi.hpp

contracts/exchange/exchange.wasm: contracts/exchange/exchange.wast.hpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/eos-n1/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating WASM exchange.wasm"
	cd /home/eos-n1/eos/build/contracts/exchange && /home/eos-n1/eos/build/libraries/wasm-jit/Source/Programs/eosio-wast2wasm /home/eos-n1/eos/build/contracts/exchange/exchange.wast /home/eos-n1/eos/build/contracts/exchange/exchange.wasm -n

contracts/exchange/exchange.wast: contracts/exchange/exchange.s
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/eos-n1/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating WAST exchange.wast"
	cd /home/eos-n1/eos/build/contracts/exchange && /home/eos-n1/eos/build/externals/binaryen/bin/eosio-s2wasm -o /home/eos-n1/eos/build/contracts/exchange/exchange.wast -s 10240 exchange.s

contracts/exchange/exchange.s: contracts/exchange/exchange.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/eos-n1/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Generating textual assembly exchange.s"
	cd /home/eos-n1/eos/build/contracts/exchange && /home/eos-n1/opt/wasm/bin/llc -thread-model=single -asm-verbose=false -o exchange.s exchange.bc

contracts/exchange/exchange.bc: contracts/exchange/exchange.cpp.bc
contracts/exchange/exchange.bc: contracts/libc++/libc++.bc
contracts/exchange/exchange.bc: contracts/musl/libc.bc
contracts/exchange/exchange.bc: contracts/eosiolib/eosiolib.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/eos-n1/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking LLVM bitcode executable exchange.bc"
	cd /home/eos-n1/eos/build/contracts/exchange && /home/eos-n1/opt/wasm/bin/llvm-link -only-needed -o exchange.bc exchange.cpp.bc /home/eos-n1/eos/build/contracts/libc++/libc++.bc /home/eos-n1/eos/build/contracts/musl/libc.bc /home/eos-n1/eos/build/contracts/eosiolib/eosiolib.bc

contracts/exchange/exchange.cpp.bc: ../contracts/exchange/exchange.cpp
contracts/exchange/exchange.cpp.bc: ../contracts/exchange/exchange.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/eos-n1/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building LLVM bitcode exchange.cpp.bc"
	cd /home/eos-n1/eos/build/contracts/exchange && /home/eos-n1/opt/wasm/bin/clang -emit-llvm -O3 --std=c++14 --target=wasm32 -ffreestanding -nostdlib -nostdlibinc -DBOOST_DISABLE_ASSERTS -DBOOST_EXCEPTION_DISABLE -fno-threadsafe-statics -fno-rtti -fno-exceptions -c /home/eos-n1/eos/contracts/exchange/exchange.cpp -o exchange.cpp.bc -Weverything -Wno-c++98-compat -Wno-old-style-cast -Wno-vla -Wno-vla-extension -Wno-c++98-compat-pedantic -Wno-missing-prototypes -Wno-missing-variable-declarations -Wno-packed -Wno-padded -Wno-c99-extensions -Wno-documentation-unknown-command -I /home/eos-n1/eos/contracts -I /home/eos-n1/eos/build/contracts -I /home/eos-n1/eos/externals/magic_get/include -isystem /home/eos-n1/eos/contracts/libc++/upstream/include -isystem /home/eos-n1/eos/contracts/musl/upstream/include -isystem /home/eos-n1/opt/boost/include

exchange: contracts/exchange/CMakeFiles/exchange
exchange: contracts/exchange/exchange.wast.hpp
exchange: contracts/exchange/exchange.abi.hpp
exchange: contracts/exchange/exchange.wasm
exchange: contracts/exchange/exchange.wast
exchange: contracts/exchange/exchange.s
exchange: contracts/exchange/exchange.bc
exchange: contracts/exchange/exchange.cpp.bc
exchange: contracts/exchange/CMakeFiles/exchange.dir/build.make

.PHONY : exchange

# Rule to build all files generated by this target.
contracts/exchange/CMakeFiles/exchange.dir/build: exchange

.PHONY : contracts/exchange/CMakeFiles/exchange.dir/build

contracts/exchange/CMakeFiles/exchange.dir/clean:
	cd /home/eos-n1/eos/build/contracts/exchange && $(CMAKE_COMMAND) -P CMakeFiles/exchange.dir/cmake_clean.cmake
.PHONY : contracts/exchange/CMakeFiles/exchange.dir/clean

contracts/exchange/CMakeFiles/exchange.dir/depend:
	cd /home/eos-n1/eos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/eos-n1/eos /home/eos-n1/eos/contracts/exchange /home/eos-n1/eos/build /home/eos-n1/eos/build/contracts/exchange /home/eos-n1/eos/build/contracts/exchange/CMakeFiles/exchange.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contracts/exchange/CMakeFiles/exchange.dir/depend

