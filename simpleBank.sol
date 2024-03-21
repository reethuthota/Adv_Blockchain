// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleBank {
    mapping(address => uint256) private balances;

    function deposit() external payable {
        require(msg.value > 0, "Deposit amount must be greater than 0");
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint256 _amount) external {
        require(_amount > 0, "Withdrawal amount must be greater than 0");
        require(balances[msg.sender] >= _amount, "Insufficient balance");
        payable(msg.sender).transfer(_amount);
        balances[msg.sender] -= _amount;
    }

    function check_balance() external view returns (uint256) {
        return balances[msg.sender];
    }
}
