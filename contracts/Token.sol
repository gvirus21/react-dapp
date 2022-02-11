//SPDX-License-Identifier: MIT

pragma solidity ^0.8.11;

import "hardhat/console.sol";

contract Token {
    string public name = "Gourav Token";
    string public symbol = "GVT";
    uint public totalSupply = 10000000;

    mapping(address => uint) balances;

    constructor() {
        balances[msg.sender] = totalSupply;
    }

    function transfer(address to, uint amount ) external {
        require(balances[msg.sender] >= amount, "Not enough Money");
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    function balanceOf(address account) external view returns (uint) {
        return balances[account];
    }

}