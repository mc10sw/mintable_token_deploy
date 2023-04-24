// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract AppleToken is ERC20 {
    address public minter;
    address public burner;
    
    constructor(uint256 initialSupply) ERC20("AppleToken", "APL") {
        minter = msg.sender;
        burner = msg.sender;
        _mint(msg.sender, initialSupply);
    }

    function mint(address to, uint256 amount) public {
        require(msg.sender == minter, "Caller is not the minter");
        _mint(to, amount);
    }

    function burn(uint256 amount) public {
        require(msg.sender == burner, "Caller is not the burner");
        _burn(msg.sender, amount);
    }
}
