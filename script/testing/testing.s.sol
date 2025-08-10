// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import "forge-std/Script.sol";
import "../../src/Fundify.sol";

contract DeployAndCreateFundify is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");

        vm.startBroadcast(deployerPrivateKey);

        // Deploy Fundify
        Fundify fundify = new Fundify();
        fundify.initialize();
        console.log("Fundify deployed at:", address(fundify));

        // Create 3 projects
        fundify.createProject(10 ether, 2);
        fundify.createProject(5 ether, 3);
        fundify.createProject(20 ether, 4);
        console.log("Created 3 projects");

        vm.stopBroadcast();
    }
}