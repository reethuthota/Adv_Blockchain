// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Even_Odd {
    function Odd_or_Even(uint256 num) public pure returns (string memory) {
        if (num % 2 == 0) {
            return "Even";
        } else {
            return "Odd";
        }
    }
}
