//Write a solidity smart contract to display block timestamp and address of the sender.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TimestampAndSender {
    function getBlockTimestamp() public view returns (uint256) {
        return block.timestamp;
    }

    function getSenderAddress() public view returns (address) {
        return msg.sender;
    }
}