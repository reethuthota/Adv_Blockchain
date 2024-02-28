// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract emplo{

    uint256 private num;
    uint256 private salary;
    struct Employee{
        string name;
        uint256 num;
        uint256 salary;
    }

    Employee[] public employee;

    function store(uint _num)public{
        num = _num;
    }

    function retrieve() public view returns(uint256){
        return num;
    }

    function addPerson(string memory _name,uint256 _num,uint _salary) public{
        employee.push(Employee(_name,_num,_salary));
    }
}