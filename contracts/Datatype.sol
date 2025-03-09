// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Datatype {
    // state variables
    int256 myInt = 1;
    uint public myUnit  = 2; // uint is positive and is 256 by default
    uint8 public myUnit8 = 3;

    string public myString = "Hello world";
    bytes32 public myBytes32 = "Hello world"; // treats it like array

    address public myAddress = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;

    struct MyStruct {
        uint myUnit;
        string myString;
    }

    MyStruct public myStruct = MyStruct(0, "Hello world");

     function getValue() public pure returns(uint) {
        return 1;
    }

    uint[] public uintArray = [1,2,3];
    string[] public myStringArray = ["cat", "dog", "moth"];
    string[] public value;

    function addValue(string memory _value) public {
        value.push(_value);
    }

    function valueLength() public view returns (uint){
        return value.length;
    }

    uint256[][] public array2d = [[1,2,3],[4,5,6]];
   
}