# SOLIDITY- CREATING MY OWN TOKEN

The following Solidity code represents a straightforward program which showcases the fundamental syntax and features of the Solidity programming language. Its objective is to provide beginners with a foundational example, allowing them to grasp the workings of Solidity and gain initial familiarity with the language.

## Description

This contract facilitates the minting and burning of tokens by the client or user through the provision of an input address. Additionally, the contract includes functions to verify the total supply of tokens in circulation and the token balance of a particular address.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:

```javascript
pragma solidity ^0.8.4;

contract HelloWorld {
    function sayHello() public pure returns (string memory) {
        return "Hello World!";
    }
}

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile HelloWorld.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "HelloWorld" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the sayHello function. Click on the "HelloWorld" contract in the left-hand sidebar, and then click on the "sayHello" function. Finally, click on the "transact" button to execute the function and retrieve the "Hello World!" message.

## Author

Metacrafter lex  

## License

This project is licensed under the MIT License
