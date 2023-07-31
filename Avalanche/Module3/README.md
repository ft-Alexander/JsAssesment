# AVALANCHE Module 3

Write a smart contract to create your own token and deploy it using HardHat or Remix. Once deployed, you should be able to interact with it for your walk-through video. From your chosen tool, the contract owner should be able to mint tokens to a provided address and any user should be able to burn and transfer tokens.

## Description
This contract enables the contract owner to mint tokent to the provided address and any user can transer or burn token that is present in their balance.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:

```javascript
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
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile HelloWorld.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "HelloWorld" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the sayHello function. Click on the "HelloWorld" contract in the left-hand sidebar, and then click on the "sayHello" function. Finally, click on the "transact" button to execute the function and retrieve the "Hello World!" message.

## Author

Metacrafter Alex  

## License

This project is licensed under the MIT License

