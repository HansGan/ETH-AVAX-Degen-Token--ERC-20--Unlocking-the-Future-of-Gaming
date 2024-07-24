# DEGEN-TOKEN - ETH AVAX PROJECT

Your task is to create a ERC20 token and deploy it on the Avalanche network for Degen Gaming. The smart contract should have the following functionality:

1. Minting new tokens: The platform should be able to create new tokens and distribute them to players as rewards. Only the owner can mint tokens.
2. Transferring tokens: Players should be able to transfer their tokens to others.
3. Redeeming tokens: Players should be able to redeem their tokens for items in the in-game store.
4. Checking token balance: Players should be able to check their token balance at any time.
5. Burning tokens: Anyone should be able to burn tokens, that they own, that are no longer needed.

## Description

Similarly to another project of mine on TYPES OF FUNCTIONS - ETH AVAX PROJECT (https://github.com/HansGan/ETH-AVAX-Types-of-Functions-Project) it is focused on creating an ERC20 token by extending the contract to ERC20. The token is named as Degen Token or DGN for short. The program consists of 6 main functions:

```
function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount); 
    }
```

## Getting Started

### Installing

* How/where to download your program
* Any modifications needed to be made to files/folders

### Executing program

* How to run the program
* Step-by-step bullets
```
code blocks for commands
```

## Authors

Contributors names and contact info

ex. Dominique Pizzie  
ex. [@DomPizzie](https://twitter.com/dompizzie)


## License

This project is licensed under the [NAME HERE] License - see the LICENSE.md file for details
