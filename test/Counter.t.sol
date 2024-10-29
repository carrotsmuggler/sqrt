// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
    }

    function testCall(uint256 input) public {
        vm.assume(input < type(uint128).max);
        uint256 result = counter.sqrt(input);
    }
}
