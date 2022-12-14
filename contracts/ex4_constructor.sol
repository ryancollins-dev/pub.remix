// SPDX-License-Identifier: GPL-3.0
// @ryd3v.eth

pragma solidity >=0.7.0 <0.9.0;

contract MyContract {
  uint256 myVar;

  constructor(uint256 _myVar) {
    myVar = _myVar;
  }

  function setMyVar(uint256 _myVar) public {
    myVar = _myVar;
  }

  function getMyVar() public view returns (uint256) {
    return myVar;
  }
}
