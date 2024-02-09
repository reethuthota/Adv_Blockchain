// You have to create an integer, string, address and bool type state variables. Create a function called display() to update and display the value of these state variables.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract State_Variable {
    int public intValue;
    string public stringValue;
    address public addressValue;
    bool public boolValue;

    function display(int _intValue, string memory _stringValue, address _addressValue, bool _boolValue) public {
        intValue = _intValue;
        stringValue = _stringValue;
        addressValue = _addressValue;
        boolValue = _boolValue;
    }
}