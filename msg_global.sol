//  Solidity smart contract that demonstrates the usage of the msg global variable
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MessageInfo {
    address public sender;
    uint public valueSent;
    bytes public data;
    uint public gasLimit;
    address public txOrigin;

    function getSenderAddress() public view returns (address) {
        return msg.sender;
    }

    function getValueSent() public payable returns (uint) {
        return msg.value;
    }

    function getData() public pure returns (bytes memory) {
        return msg.data;
    }

    function getGasLimit() public view returns (uint) {
        return gasleft();
    }

    function getTransactionOrigin() public view returns (address) {
        return tx.origin;
    }
}
