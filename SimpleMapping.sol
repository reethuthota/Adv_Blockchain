// This contract, SimpleMapping, contains a mapping named names, which maps uint256 keys to string values. It allows storing names against unique IDs.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleMapping {
    mapping(uint256 => string) public names;

    function setName(uint256 id, string memory name) public {
        names[id] = name;
    }

    function getName(uint256 id) public view returns (string memory) {
        return names[id];
    }
}