// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Token} from "../contracts/Token.sol";

contract CounterTest is Test {
    Token public token;

    function setUp() public {
        token = new Token();
    }

    function testBalance() public {
        assertEq(token.balanceOf(address(this)), 1000000 * (1e18));
    }
}