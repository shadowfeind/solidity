// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HotelRoom {
    enum Status {Vacant, Occupied}
    Status public currentStatus;

    event Occupy(address _occupant, uint _value);

    address payable public owner;

    constructor() {
        owner = payable (msg.sender);
        currentStatus = Status.Vacant;
    }

    modifier cost(uint _amount){
         require(msg.value >= _amount , "Not enough ether for booking");
         _;
    }

    modifier onlyWhileVacant {
        require(currentStatus == Status.Vacant, "Hotel room is occupied");
        _;
    }

function book() payable onlyWhileVacant cost(2 ether) {
    currentStatus = Status.Occupied;
    (bool sent, bytes memory data) = owner.call{value: msg.value}("");
    require(true);

    emit Occupy(msg.sender, msg.value);
}
}