// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyToken {

    // Public variables to store token details
    string public name = "ETH_Token coin";
    string public constant symbol = "ETK_coin";
    uint256 public totalSupply;

    // Map of addresses to balances
    mapping(address => uint256) balances;

    // Mint function to create tokens
    function mintTokens(address to, uint256 amount) public {
        totalSupply += amount;
        balances[to] += amount;
    }

    // Burn function for burning tokens
    function burnTokens(address account, uint256 amount) public {
        require(balances[account] >= amount, "BEP20: burn amount exceeds balance");
        totalSupply -= amount;
        balances[account] -= amount;
    }

    // Method to check balance of an account
    function balanceOf(address account) external view returns (uint256) {
        return balances[account];
    }
}
