// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StoreInventory {
    uint256 public itemCount = 0;
    bool public inventoryAccess = false;

    function addItem(uint256 quantityAdd) public {
        require(inventoryAccess == true, "Inventory Locked");
        itemCount += quantityAdd;
    }

    function removeItem(uint256 quantitySub) public {
        require(inventoryAccess == true, "Inventory Locked");
        require(itemCount >= quantitySub, "Insufficient Items in inventory");
        itemCount -= quantitySub;
    }

    function getInventory() public view returns(uint256) {
        return itemCount;
    }

    function AccessControl(bool accessCode) public {
        inventoryAccess = accessCode;
    }
}
