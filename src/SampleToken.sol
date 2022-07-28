// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract SampleToken is ERC20 {

    mapping(address=>uint) releaseTime;

    error CustomRevert();

    constructor(uint initialSupply, string memory name, string memory symbol) ERC20(name, symbol) {
        _mint(msg.sender, initialSupply);
    }

    function customRevert() public pure {
        revert CustomRevert();
    }

    function deposite() public {
        releaseTime[msg.sender] = block.timestamp + 5 days;
    }

    function withdraw() public view returns(bool) {
        require(block.timestamp >= releaseTime[msg.sender], "Time lock");
        return true;
    }

    function getReleaseTime() public view returns(uint) {
        return releaseTime[msg.sender];
    }
}
