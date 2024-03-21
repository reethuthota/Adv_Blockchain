// You are tasked with developing a smart contract to track the balances of various Ethereum addresses. Each address should have a corresponding balance, represented as an unsigned integer (uint256).

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BalanceTracker {
    mapping(address => uint256) public balances;

    function setBalance(address _address, uint256 _newBalance) public {
        balances[_address] = _newBalance;
    }

    function getBalance(address _address) public view returns (uint256) {
        return balances[_address];
    }
}