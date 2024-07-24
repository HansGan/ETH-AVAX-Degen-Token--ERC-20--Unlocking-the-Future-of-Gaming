// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {
    // Define items and their respective token costs
    struct item_collection {
        string name;
        uint256 cost;
    }

    mapping(uint256 => item_collection) public items;
    uint256 public itemCount;

    constructor() ERC20("Degen", "DGN") Ownable(msg.sender) {
        // Add some items to the store
        addItem("Chain_Mail", 10);
        addItem("Boots", 15);
        addItem("Magic", 5);
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount); 
    }

    function decimals() override public pure returns (uint8) {
        return 0;
    }

    function getBalance() external view returns (uint256) {
        return this.balanceOf(msg.sender);
    }

    function transferTokens(address _receiver, uint256 _value) external {
        require(balanceOf(msg.sender) >= _value, "Insufficient amount of DGN token to perform a transfer!");
        approve(msg.sender, _value);
        transferFrom(msg.sender, _receiver, _value);
    }

    function burnTokens(uint256 _value) external {
        require(balanceOf(msg.sender) >= _value, "Insufficient amount of DGN token!");
        _burn(msg.sender, _value);
    }

    function addItem(string memory _name, uint256 _cost) public onlyOwner {
        items[itemCount] = item_collection(_name, _cost);
        itemCount++;
    }

    function redeemTokens(uint256 itemId) external {
        require(itemId < itemCount, "Invalid item ID");
        item_collection memory item = items[itemId];
        require(balanceOf(msg.sender) >= item.cost, "Not enough DGN tokens to redeem the item");
        _burn(msg.sender, item.cost);
    }
}
