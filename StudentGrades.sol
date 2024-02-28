// You are developing a Solidity contract to manage student grades. Each student has a unique ID, and their grades are stored in a mapping.  You need to implement functions to add and retrieve grades for students. Write the Solidity contract GradeManagement with the following functionality: A mapping named studentGrades to store grades for each student (key: student ID, value: grade). A function named addGrade() that takes a student ID and a grade as input and adds the grade to the mapping. Import this in a new contract and return grade for a particular student ID.  A function named getGrade() that takes a student ID as input and returns the grade associated with that student. Only if Grade is "Fail", print a message and not return the grade.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentGrades {
    mapping(uint256 => string) studentGradings;

    function addGrade(uint256 id, string memory grade) public {
        studentGradings[id] = grade;
    }

    function getGrade(uint256 id) public view virtual returns (string memory) {
        return "hello";
    }
}

contract GradeFinder is StudentGrades{
    function getGrade(uint256 id) public view override returns (string memory) {
        if(keccak256(bytes(studentGradings[id])) == keccak256(bytes('F'))) {
            return "Fail";
        } else {
            return studentGradings[id];
        }
        
    }
}