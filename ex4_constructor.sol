// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MyContract {

    uint256 myVar;

    constructor(uint256 _myVar) {
        myVar = _myVar;
    }

    function setMyVar(uint256 _myVar) public {
        myVar = _myVar;
    }

    function getMyVar() view public returns(uint256) {
        return myVar;
    }
}