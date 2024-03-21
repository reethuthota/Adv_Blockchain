// SimpleToken: A contract to create a basic ERC20 token with a fixed supply.

//SPDX-License-Identifier:MIT
pragma solidity 0.8.0;

contract transferEth{
    string public token_name;
    string public symbol;
    uint public decimals;
    uint public totalsupply;
    mapping(address=>uint)public balance;
    constructor(){
        token_name="mytoken";
        symbol="KR";
        decimals=18;
        totalsupply=1000;
        balance[msg.sender]=1000;
    }
    function transfer(address _to, uint _value)public {
        require(balance[msg.sender]>0,"Insufficient");
        balance[msg.sender]-=_value;
        balance[_to]+=_value;
    }
}

