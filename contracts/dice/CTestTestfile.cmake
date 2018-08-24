# CMake generated Testfile for 
# Source directory: /home/eos-n1/eos/contracts/dice
# Build directory: /home/eos-n1/eos/build/contracts/dice
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_dice_abi "/home/eos-n1/eos/build/scripts/abi_is_json.py" "/home/eos-n1/eos/contracts/dice/dice.abi")
