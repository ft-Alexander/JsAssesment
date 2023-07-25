// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract smartContract {

    address public contractOwner;

    constructor() public {
        contractOwner = msg.sender;
    }

    function checkRequire() public view returns(string memory){
        require(msg.sender == contractOwner, "You are not the owner");
        return "It's good";
    }

    function checkRevert() public view returns(string memory){
        if(msg.sender != contractOwner){
            revert("You are not the owner");
        }
        return "It's Good";
    }

    function checkAssert() public view {
        assert(msg.sender == contractOwner);
    }

}
