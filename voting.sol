// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleVoting {
    uint public yes;
    uint public no;
    function voteYes() public {
        yes++;
    }
    function voteNo() public {
        no++;
    }
}