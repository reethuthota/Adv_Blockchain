// Write a Solidity smart contract that implements two functions: one for displaying the address of the contract and the other for displaying the balance of the contract
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContractDetails {
    // Function to get the address of the contract
    function getContractAddress() external view returns (address) {
        return address(this);
    }
    
    // Function to get the balance of the contract
    function getContractBalance() external view returns (uint256) {
        return address(this).balance;
    }
}