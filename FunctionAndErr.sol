// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract ExceptionTrial {
    uint256 public value;

    function setValue(uint256 _newValue) external {
        require(_newValue > 0, "Value must be greater than 0");
        
        value = _newValue;
    }

    function assertExample(uint256 _input) external pure returns (uint256) {
        assert(_input > 10);
        return _input;
    }

    function revertExample(uint256 _input) external pure returns (uint256) {
        if (_input == 0) {
            revert("Input cannot be zero");
        }
        
        return _input;
    }
}
