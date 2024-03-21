//SPDX-License-Identifier:MIT
pragma solidity 0.8.0;

contract transferEth{
    mapping(address=>uint)public balance;
    function transferEther(address payable recipient)external payable {
        require(msg.value>0,"Insufficeint");
        recipient.transfer(msg.value);
    }
}

