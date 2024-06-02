# metacrafter_eth_solidity
This Solidity program is a simple program that demonstrates how the contract allows the creation (minting) and destruction (burning) of tokens while keeping track of the total supply and individual balances, with a safeguard to prevent burning more tokens than are available in an address's balance.
## Description
the MyToken contract provides a basic implementation of a token on the Ethereum blockchain. It includes functionalities to mint new tokens, burn existing tokens, and check the token balance of any account. This simple contract serves as a foundation for understanding more complex token standards like ERC-20.


## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension. Copy and paste the following code into the file:
```javascript
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


```
##HELP
Initialization:

Set the token name to "ETH_Token coin".
Set the token symbol to "ETK_coin".
Initialize the total token supply to 0.
Create a mapping to store token balances for each address.
Mint Tokens:

Input: address to, uint256 amount.
Increase totalSupply by amount.
Increase balances[to] by amount.
Burn Tokens:

Input: address account, uint256 amount.
Ensure balances[account] is at least amount.
Decrease totalSupply by amount.
Decrease balances[account] by amount.
Check Balance:

Input: address account.
Output: Return balances[account].
This brief algorithm outlines the main functionalities of the MyToken contract.

## Authors

krish khandelwal 
EMAIL ID:krishkhandelwal58@gmail.com


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
