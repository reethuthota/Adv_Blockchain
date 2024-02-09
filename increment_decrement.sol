// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter{
    function increment(uint a) public pure returns (uint) {
        return ++a;
    }
    function decrement(uint b) public pure returns (uint) {
        return --b;
    }
}