pragma solidity ^0.5.0;

contract Adoption {
    
    address[16] public adopters;
    address public admin;

    constructor() public {
        admin = msg.sender;
    }

    // Adopting a pet
    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15);
        require(adopters[petId] == address(0x0));        

        adopters[petId] = msg.sender;

        return petId;
    }

    // Retrieving the adopters
    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }
 
}
