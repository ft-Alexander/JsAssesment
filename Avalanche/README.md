# SOLIDITY- Using Require, Revert, and Assert Error Handling Statements

In Solidity, implementing Require, Revert, and Assert error handling functions is crucial for ensuring secure and robust smart contract behavior by validating conditions, reverting erroneous states, and asserting critical assumptions during contract execution.

## Description

This contract handles multiple error possibilities by having the  3 most known error handling in solidity which is the Require, Assert and Revert statements. In this project I use those three statement to create individual function that can check and valid said errors.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:

```javascript
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
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile HelloWorld.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "HelloWorld" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the sayHello function. Click on the "HelloWorld" contract in the left-hand sidebar, and then click on the "sayHello" function. Finally, click on the "transact" button to execute the function and retrieve the "Hello World!" message.

## Author

Metacrafter Alex  

## License

This project is licensed under the MIT License

