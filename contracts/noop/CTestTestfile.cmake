# CMake generated Testfile for 
# Source directory: /home/eos-n1/eos/contracts/noop
# Build directory: /home/eos-n1/eos/build/contracts/noop
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_noop_abi "/home/eos-n1/eos/build/scripts/abi_is_json.py" "/home/eos-n1/eos/contracts/noop/noop.abi")
