// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IERC20 {
    function transfer(address, uint256) external returns (bool);
}

contract TokenSale {
    IERC20 public token;
    address public owner;
    uint256 public price = 0.02 ether;

    constructor(address _token) {
        token = IERC20(_token);
        owner = msg.sender;
    }

    function buy() external payable {
        require(msg.value > 0, "Send ETH");

        uint256 amount = msg.value / price;
        token.transfer(msg.sender, amount);
    }

    function withdraw() external {
        require(msg.sender == owner, "Not owner");
        payable(owner).transfer(address(this).balance);
    }
}
