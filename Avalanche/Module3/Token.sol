// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract token {
    string public tokenName = "ALEXANDER";
    string public tokenAbbr = "ALX";
    uint256 public totalSupply = 0;
    address public contractOwner;
    address public user;
    
    mapping(address => uint256) balances;

    constructor() {
        contractOwner = msg.sender;
    }

    function checkBalance() public view returns (uint256){
        return balances[msg.sender];
    }
    

    function mintToken(address _address, uint _tokenMint) public{
        require(msg.sender == contractOwner, "You are not the owner");
        totalSupply += _tokenMint;
        balances[_address] += _tokenMint;
    }


    function burn(uint256 _value) public {
        user = msg.sender;
        require(balances[msg.sender] >= _value, "Insufficient Balance");
        totalSupply -= _value;
        balances[msg.sender] -= _value;
    }

    function transfer(address _address, uint256 _value) public {
        user = msg.sender;
        require(balances[msg.sender] >= _value,"Insufficient Balance");
        balances[_address] += _value;
        balances[msg.sender] -= _value;
    }
}
