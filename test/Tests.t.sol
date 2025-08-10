// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.22;

import { console } from '@forge-std/Test.sol';
import { Project, Investment } from "../src/Fundify.sol";
import { TestSetUp } from "./TestSetUp.sol";

contract Tests is TestSetUp {
    function testProjectCreation() public {}

    function testProjectCreationInvalidInputs() public {}

    function testProjectFunding() public {}

    function testProjectFundingInvalidInputs() public {}

    function testProjectFundReleasing() public {}

    function testProjectFundReleasingInvalidInputs() public {}
}