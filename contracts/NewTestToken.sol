// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// 스마트 컨트렉트 이름 넣기
// 생성자의 name 에 명명규칙이 있으면 좋을거 같음.
contract NewTestToken is ERC20 {
    address public minter;
    address public burner;

// 환경 이름 (seq)
//    constructor(uint256 initialSupply) ERC20("name", "symbol") {
    constructor(uint256 initialSupply) ERC20("TETHER", "USDT") {
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
