// SPDX-License-Identifier: GPL-3.0
// 2022-09-13
// @ryd3v

pragma solidity >=0.7.0 <0.9.0;

contract MyContract {
  uint256 public myVarOne;
  uint256 public myVarTwo;
  bool writeable;

  modifier mustBeWriteable() {
    require(writeable);
    _;
  }

  function setWriteable(bool _writeable) public {
    writeable = _writeable;
  }

  function updateMyVarOne(uint256 _myVar) public mustBeWriteable {
    myVarOne = _myVar;
  }

  function updateMyVarTwo(uint256 _myVar) public mustBeWriteable {
    myVarTwo = _myVar;
  }
}
