// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Crowdfunding {
    address private campaignOwner;
    uint256 private goal;
    uint256 private totalFunds;

    bool private campaignComplete;

    mapping(address => uint256) public contributions;

    constructor(address _campaignOwner, uint256 _goal) {
        campaignOwner = _campaignOwner;
        goal = _goal;
        campaignComplete = false;
    }

    function contribute() external payable {
        require(!campaignComplete, "Campaign is already complete");
        require(msg.value > 0, "Contribution amount must be greater than 0");

        contributions[msg.sender] += msg.value;
        totalFunds += msg.value;

        if (totalFunds >= goal) {
            campaignComplete = true;
        }
    }

    function withdrawFunds() external {
        require(campaignComplete, "Campaign is not yet complete");
        require(msg.sender == campaignOwner, "Only campaign owner can withdraw funds");
        payable(campaignOwner).transfer(totalFunds);
    }
}
