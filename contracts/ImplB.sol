// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract ImplB {
    uint256 public b;
    uint256 public c;

    constructor() {}

    function addB() public {
        b += 1;
    }

    function addC() public {
        c += 1;
    }
}
