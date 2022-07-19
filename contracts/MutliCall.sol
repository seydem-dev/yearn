// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

error LengthNotEqual();
error CallFailed();

contract MultiCall {

    function mutliCall(address[] calldata targets, bytes[] calldata data) external view returns (bytes[] memory) {
        if (targets.length != data.length) revert LengthNotEqual();
        bytes[] memory results = new bytes[](data.length);
        for (uint256 i; i < targets.length; i++) {
            (bool success, bytes memory result) = targets[i].staticcall(data[i]);
            if (!success) revert CallFailed();
            results[i] = result;
        }
        return results;
    }
}
