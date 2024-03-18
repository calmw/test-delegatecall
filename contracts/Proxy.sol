// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Proxy {
    constructor() {}

    // 代理合约中不能写逻辑，否侧逻辑合约变量不生效
//    function readStorageSlot0() public view returns (uint256 result) {
//        assembly {
//            result := sload(0)
//        }
//    }

    fallback() external payable {
        uint256 time = block.timestamp / 60;
        address implAddress = 0xd9145CCE52D386f254917e481eB44e9943F39138;
        if (time % 2 == 1) {
            implAddress = 0xd9145CCE52D386f254917e481eB44e9943F39138;
        }
        assembly {
            calldatacopy(0, 0, calldatasize())
            let result := delegatecall(gas(), implAddress, 0, calldatasize(), 0, 0)
            returndatacopy(0, 0, returndatasize())
            switch result
            case 0 {
                revert(0, returndatasize())
            }
            default {
                return (0, returndatasize())
            }
        }
    }

    receive() external payable {}
}
