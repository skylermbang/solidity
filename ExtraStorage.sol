//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import "./SimpleStorage.sol";

contract StrageFactory{

    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public{
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);

    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public{
        //to interact with contract you alway need
        // address of contract
        // ABI - Application Binary Interface
        // if you import on the top you dont need ABI 

        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        simpleStorage.store(_simpleStorageNumber); // Store the simple storage number to it 

    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        SimpleStorage simpleStorage= simpleStorageArray[_simpleStorageIndex];
        return simpleStorage.retrieve();
    } // read data from the simple storage
}