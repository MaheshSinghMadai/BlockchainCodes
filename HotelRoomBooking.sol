// SPDX-License-Identifier: RANDOM_TEXT
pragma solidity ^0.7.1;
    //Ether - pay smart contracts
    //Modifiers
    //Visibility
    //Events
    //Enums

contract HotelRoom {
   
   enum Statuses { Vacant, Occupied }
   Statuses currentStatus;
   
   event Occupy(address _occupant, uint _value);
   
   address payable public owner;
   
   constructor() {
       owner = msg.sender; //address of user who calls the function
    currentStatus = Statuses.Vacant;
   }
   
   modifier onlyWhileVacant{
       require(currentStatus == Statuses.Vacant, "Currently Occupied");
       _;
   }
   
   modifier costs (uint _amount) {
        require(msg.value >=  _amount, "Not enough ether"); //check prive
        _;
   }
   
   receive() external payable onlyWhileVacant costs(2 ether) {
       currentStatus = Statuses.Occupied;
       owner.transfer(msg.value);
       emit Occupy(msg.sender , msg.value);
    }
}