//  Write a solidity smart contract to implement a calculator with following operations : add, sub, mul, div

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Calculator {
    int value1;
    int value2;

    function setValue(int _value1, int _value2) public {
        value1 = _value1;
        value2 = _value2;
    }

    function add() public view returns (int) {
        return value1 + value2;
    }

    function sub() public view returns (int) {
        return value1 - value2;
    }

    function mul() public view returns (int) {
        return value1 * value2;
    }

    function div() public view returns (int) {
        require(value2 != 0, "Division by zero is not allowed");
        return value1 / value2;
    }

}