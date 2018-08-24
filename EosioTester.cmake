cmake_minimum_required( VERSION 3.5 )

set(CMAKE_CXX_COMPILER /usr/bin/clang++-4.0)
set(CMAKE_C_COMPILER   /usr/bin/clang-4.0)

set(EOSIO_VERSION "1.2.1")

enable_testing()

find_package( Gperftools QUIET )
if( GPERFTOOLS_FOUND )
    message( STATUS "Found gperftools; compiling tests with TCMalloc")
    list( APPEND PLATFORM_SPECIFIC_LIBS tcmalloc )
endif()

find_package(LLVM 4.0 REQUIRED CONFIG)

link_directories(${LLVM_LIBRARY_DIR})

set( CMAKE_CXX_STANDARD 14 )
set( CMAKE_CXX_EXTENSIONS ON )
set( CXX_STANDARD_REQUIRED ON )

if ( APPLE )
   set( CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS} -Wall -Wno-deprecated-declarations" )
   set( BOOST_ROOT "/usr/local/boost" )
else ( APPLE )
   set( CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall")
   set( CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -static-libstdc++ -static-libgcc")
   set( BOOST_ROOT "~/opt/boost" )
endif ( APPLE )

set( Boost_USE_STATIC_LIBS ON CACHE STRING "ON or OFF" )
find_package(Boost 1.67 REQUIRED COMPONENTS
   date_time
   filesystem
   system
   chrono
   iostreams
   unit_test_framework)

find_library(libtester eosio_testing /usr/local/eosio/lib)
find_library(libchain eosio_chain /usr/local/eosio/lib)
if ( "${CMAKE_BUILD_TYPE}" EQUAL "Debug" )
   find_library(libfc fc_debug /usr/local/eosio/lib)
else()
   find_library(libfc fc /usr/local/eosio/lib)
endif()

find_library(libbinaryen binaryen /usr/local/eosio/lib)
find_library(libwasm WASM /usr/local/eosio/lib)
find_library(libwast WAST /usr/local/eosio/lib)
find_library(libir IR     /usr/local/eosio/lib)
find_library(libplatform Platform /usr/local/eosio/lib)
find_library(liblogging Logging /usr/local/eosio/lib)
find_library(libruntime Runtime /usr/local/eosio/lib)
find_library(libsoftfloat softfloat /usr/local/eosio/lib)
find_library(liboscrypto crypto /usr/include/openssl/lib)
find_library(libosssl ssl /usr/include/openssl/lib)
find_library(libchainbase chainbase /usr/local/eosio/lib)
find_library(libbuiltins builtins /usr/local/eosio/lib)
find_library(libsecp256k1 secp256k1 /usr/local/lib)

macro(add_eosio_test test_name)
   add_executable( ${test_name} ${ARGN} )
   target_link_libraries( ${test_name}
       ${LLVM}
       ${libtester}
       ${libchain}
       ${libfc}
       ${libbinaryen}
       ${libwast}
       ${libwasm}
       ${libruntime}
       ${libplatform}
       ${libir}
       ${libsoftfloat}
       ${liboscrypto}
       ${libosssl}
       ${liblogging}
       ${libchainbase}
       ${libbuiltins}
       ${libsecp256k1}

       LLVMX86Disassembler
       LLVMX86AsmParser
       LLVMX86AsmPrinter
       LLVMX86CodeGen

       LLVMSelectionDAG

       LLVMDebugInfoDWARF
       LLVMAsmPrinter
       LLVMMCParser
       LLVMX86Info

       LLVMOrcJIT
       LLVMExecutionEngine

       LLVMCodeGen
       LLVMScalarOpts
       LLVMTransformUtils

       LLVMipo
       LLVMAnalysis
       LLVMTarget
       LLVMMC
       LLVMCore
       LLVMSupport
       ${Boost_FILESYSTEM_LIBRARY}
       ${Boost_SYSTEM_LIBRARY}
       ${Boost_CHRONO_LIBRARY}
       ${Boost_IOSTREAMS_LIBRARY}
       ${Boost_DATE_TIME_LIBRARY}
       ${PLATFORM_SPECIFIC_LIBS}
      )

   #### TODO /usr/local/include is a hack for fc and some other includes
   target_include_directories( ${test_name} PUBLIC
                               ${Boost_INCLUDE_DIRS}
                               /usr/include
                               /usr/local/eosio
                               /usr/local/eosio/include
                               /usr/local/eosio/include/wasm-jit
                               /usr/local/eosio/include/softfloat )

   #Manually run unit_test for all supported runtimes
   #To run unit_test with all log from blockchain displayed, put --verbose after --, i.e. unit_test -- --verbose
   add_test(NAME ${test_name}_binaryen COMMAND ${test_name}
    --report_level=detailed --color_output -- --binaryen)
   add_test(NAME ${test_name}_wavm COMMAND ${test_name}
    --report_level=detailed --color_output --catch_system_errors=no -- --wavm)
endmacro()
