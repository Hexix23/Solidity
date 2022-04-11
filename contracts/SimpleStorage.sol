// SPDX-License-Identifier: MIT -> meaning that it is public domain and is a better way to show and trust ur contract to the community. ( its like a standar of the community )

pragma solidity  ^0.6.0;

contract SimpleStorage {

    uint256 public favoriteNumber = 5;
    uint256 public pureNumber = 2;
    bool favoriteBool = true; // or false
    bool favoriteBool2 = false;
    string favoriteString = "Hello World!"; //tecnaclty are objects on Solidity
    int256 favoriteInt = -1; //can be positive or negative
    address favoriteAddress = 0x9F3D6b840BeeE65408a5D371D562D242C9Ee3744; //address of the contract
    bytes32 favoriteBytes = "cat"; //32 bytes of max length, can be more / less than 32 bytes

    //structs are like object inside of an object
    struct People{
        uint256 peopleNumber;
        string name;
    }
    People public person = People({peopleNumber: 1, name: "Boyan"});

    //ARRAYS
    People[] public people; //thats a dinamic array
    People[1] public people2; //thats array with fixed size of 1

    //Mappings
    mapping(string => uint256) public nameToFavoriteNumber; //key is string, value is uint256

    function addPerson(string memory _name, uint256 _peopleNumber) public {
        people.push(People(_peopleNumber, _name));
        nameToFavoriteNumber[_name] = _peopleNumber; //we are maping the name to the number with a mapping, its like a key value pair
    }

    /*
    Two ways to store information:
        1. Storage: stores information in the blockchain (persists after the execution of the contract)
        2. Memory: data will only be stored during the execution of the function
    */

    /*
    Types of Functions:
    --> external: can be accessed by anyone
    --> internal: can only be accessed by the contract
    --> public: can be accessed by anyone
    --> private: can only be accessed by the contract
    --> constant: can be accessed by anyone, but can't be changed
    --> payable: can be accessed by anyone, but can't be changed
    --> view: can be accessed by anyone, but can't be changed, we want to read some state off the blockchain
    --> pure: can be accessed by anyone, but can't be changed, purely do some types of math
    */
    
    function store(uint256 x) public {
        favoriteNumber = x;
    }

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }
    
    function retrieve2(uint256 x) public pure{
         x  + x;
    }

}