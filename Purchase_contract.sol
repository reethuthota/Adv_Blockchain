//SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract PurchaseContract {
    uint public item1;
    uint public item2;
    mapping(address => uint) public purchase;

    uint public price1 = 1;
    uint public price2 = 2;

    constructor() {
        item1 = 1;
        item2 = 2;
    }

    function purchaseItem(uint _id) public payable {
        require(_id == item1 || _id == item2, "Invalid item ID");

        uint itemPrice = getPrice(_id);

        require(msg.value >= itemPrice, "Insufficient funds");

        purchase[msg.sender] += itemPrice;
        if (msg.value > itemPrice) {
            payable(msg.sender).transfer(msg.value - itemPrice);
        }
        
    }

    function getPrice(uint _id) internal view returns (uint) {
        require(_id == item1 || _id == item2, "Invalid item ID");

        if (_id == item1) {
            return price1;
        } else if (_id == item2) {
            return price2;
        }
        else
        return 0;
    }
}
