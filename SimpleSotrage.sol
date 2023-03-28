//SPDX-License-Identifier: UNLICENSED


pragma solidity ^0.8.8; // make sure you put the program version 

contract SimpleStorage {



    uint256 public favoriteNumber;  

    struct People {
        uint256 favoriteNumber;
        string name;
    }


    People[] public people;  //dynamic array
    //People[3] public favoritePeople; // size of 3  fixed 
    //uint256[] public favoriteNumberList;
    //mapping 
    mapping(string => uint256) public nameToFavoriteNumber;
    



    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        //people.push(People(_favoriteNumber,_name));
        // People memory newPerson=People({
        //     favoriteNumber:_favoriteNumber,
        //     name:_name});
        // people.push(newPerson);
        people.push(People(_favoriteNumber,_name));
        nameToFavoriteNumber[_name]=_favoriteNumber;

    }






    function store(uint256 _favoriteNumber) public virtual{ 
        favoriteNumber = _favoriteNumber;
        favoriteNumber = favoriteNumber + 1;
    // more stuff you do here will result in more gas in the transaction
    }

     // view pure  those functions are free, 
     // view function allow ju.  not able to update the blockchain
     // pure not able to   not able to reading as well 

     function retrieve() public view returns(uint256){
         return favoriteNumber;
     }


    function someFunction() public pure returns(uint256){
        return (1+1); //something you will need to use alot of but dopsent need to retrieve the data ?  dosent need storae or  view
    }






}