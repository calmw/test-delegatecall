// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract ImplA {
    uint256 public a;
    uint256 public b;

    constructor() {}

    function addA() public {
        a += 1;
    }

    function addB() public {
        b += 1;
    }
}
