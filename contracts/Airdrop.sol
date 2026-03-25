// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IERC20 {
    function transfer(address, uint256) external returns (bool);
}

contract Airdrop {
    IERC20 public token;
    address public owner;

    constructor(address _token) {
        token = IERC20(_token);
        owner = msg.sender;
    }

    function airdrop(address[] calldata users, uint256 amount) external {
        require(msg.sender == owner, "Not owner");

        for (uint i = 0; i < users.length; i++) {
            token.transfer(users[i], amount);
        }
    }
}
