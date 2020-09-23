// SPDX-License-Identifier: RANDOM_TEXT
pragma solidity ^0.7.1;

contract MyContract {
    //Mappings
    mapping(uint => string ) public names;
    mapping(uint => Book) public books;
    mapping(address => mapping(uint => Book)) public myBooks;
    
    struct Book {
        string title;
        string author;
    }
    
    constructor() {
        names[1] = "Mahesh";
        names[2] = "Dipesh";
        names[3] = "Diwash";
        names[4] = "Utsav";
    }
    
    function addBook(uint _id,string memory _title,string memory _author) public {
        books[_id] = Book(_title, _author);
    } 
    
    function addMyBook(uint _id,string memory _title,string memory _author) public {
        myBooks[msg.sender][_id] = Book(_title, _author);
    }
}