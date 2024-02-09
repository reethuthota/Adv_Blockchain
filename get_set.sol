// Make use of the follwing functions:
// setValue() - function to set value to the state variable.
// getValue()  - function to return the value set into the state variable

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract get_set {
    int exampleValue;

    function setValue(int _exampleValue) public {
        exampleValue = _exampleValue;
    }

    function getValue() public view returns (int) {
        return exampleValue;
    }

}