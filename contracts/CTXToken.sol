// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract CTXToken is ERC20, Ownable {
    uint256 public maxSupply = 1000000000 * 10 ** 18;

    constructor() ERC20("Crytex Token", "CTX") {
        _mint(msg.sender, 100000000 * 10 ** 18); // initial supply
    }

    function mint(address to, uint256 amount) external onlyOwner {
        require(totalSupply() + amount <= maxSupply, "Max supply exceeded");
        _mint(to, amount);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}
