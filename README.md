# DEGEN-TOKEN - ETH AVAX PROJECT

Your task is to create a ERC20 token and deploy it on the Avalanche network for Degen Gaming. The smart contract should have the following functionality:

1. Minting new tokens: The platform should be able to create new tokens and distribute them to players as rewards. Only the owner can mint tokens.
2. Transferring tokens: Players should be able to transfer their tokens to others.
3. Redeeming tokens: Players should be able to redeem their tokens for items in the in-game store.
4. Checking token balance: Players should be able to check their token balance at any time.
5. Burning tokens: Anyone should be able to burn tokens, that they own, that are no longer needed.

## Description

Similarly to another project of mine on TYPES OF FUNCTIONS - ETH AVAX PROJECT (https://github.com/HansGan/ETH-AVAX-Types-of-Functions-Project) it is focused on creating an ERC20 token by extending the contract to ERC20. The token is named as Degen Token or DGN for short. The program consists of 6 main functions:

The following function allows the transfer of balance to the account being used.
```
function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount); 
}
```
The following functions extracts the balance of the account:
```
function getBalance() external view returns (uint256) {
        return this.balanceOf(msg.sender);
}
```
The folllowing function allows the transfer of tokens to another account:
```
function transferTokens(address _receiver, uint256 _value) external {
        require(balanceOf(msg.sender) >= _value, "Insufficient amount of DGN token to perform a transfer!");
        approve(msg.sender, _value);
        transferFrom(msg.sender, _receiver, _value);
}
```
The following function allows the burning of tokens:
```
function burnTokens(uint256 _value) external {
        require(balanceOf(msg.sender) >= _value, "Insufficient amount of DGN token!");
        _burn(msg.sender, _value);
}
```
The following function to allow the addition of items to the item_collection:
```
function addItem(string memory _name, uint256 _cost) public onlyOwner {
        items[itemCount] = item_collection(_name, _cost);
        itemCount++;
}
```
The following function allows the user to redeem items from the item_collection with tokens:
```
function redeemTokens(uint256 itemId) external {
        require(itemId < itemCount, "Invalid item ID");
        item_collection memory item = items[itemId];
        require(balanceOf(msg.sender) >= item.cost, "Not enough DGN tokens to redeem the item");
        _burn(msg.sender, item.cost);
}
```
Overall, the program was specifically made to demonstrate how users can get, transfer, burn tokens and buy or redeem items with their acquired tokens.

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
