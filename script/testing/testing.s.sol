// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import "forge-std/Script.sol";
import "../../src/Fundify.sol";

contract DeployAndCreateFundify is Script {
    function run() external {
        uint256 user1PrivateKey = vm.envUint("USER1_PRIVATE_KEY");
        address user1PublicKey = vm.addr(user1PrivateKey);

        uint256 user2PrivateKey = vm.envUint("USER2_PRIVATE_KEY");
        address user2PublicKey = vm.addr(user2PrivateKey);

        uint256 user3PrivateKey = vm.envUint("USER3_PRIVATE_KEY");
        address user3PublicKey = vm.addr(user3PrivateKey);

        uint256 user4PrivateKey = vm.envUint("USER4_PRIVATE_KEY");
        address user4PublicKey = vm.addr(user4PrivateKey);

        uint256 user5PrivateKey = vm.envUint("USER5_PRIVATE_KEY");
        address user5PublicKey = vm.addr(user5PrivateKey);

        vm.startBroadcast(user1PrivateKey);

        Fundify fundify = new Fundify();
        fundify.initialize();
        console.log("Fundify deployed at:", address(fundify));

        vm.stopBroadcast();

        vm.startBroadcast(user1PrivateKey);

        fundify.createProject(10 ether, 2);
        fundify.createProject(5 ether, 3);
        fundify.createProject(20 ether, 4);
        console.log("Created 3 projects");

        vm.stopBroadcast();

        vm.startBroadcast(user2PrivateKey);

        fundify.fundProject{value: 2 ether}(user1PublicKey, 0);
        fundify.fundProject{value: 1 ether}(user1PublicKey, 1);
        fundify.fundProject{value: 2 ether}(user1PublicKey, 2);

        vm.stopBroadcast();

        vm.startBroadcast(user3PrivateKey);

        fundify.fundProject{value: 2 ether}(user1PublicKey, 0);
        fundify.fundProject{value: 1 ether}(user1PublicKey, 1);
        fundify.fundProject{value: 2 ether}(user1PublicKey, 2);

        vm.stopBroadcast();

        vm.startBroadcast(user4PrivateKey);

        fundify.fundProject{value: 2 ether}(user1PublicKey, 0);
        fundify.fundProject{value: 1 ether}(user1PublicKey, 1);
        fundify.fundProject{value: 2 ether}(user1PublicKey, 2);

        vm.stopBroadcast();

        vm.startBroadcast(user5PrivateKey);

        fundify.fundProject{value: 2 ether}(user1PublicKey, 0);
        fundify.fundProject{value: 1 ether}(user1PublicKey, 1);
        fundify.fundProject{value: 2 ether}(user1PublicKey, 2);

        vm.stopBroadcast();

        vm.startBroadcast(user2PrivateKey);

        fundify.createProject(10 ether, 2);
        fundify.createProject(5 ether, 3);
        fundify.createProject(20 ether, 4);
        console.log("Created 3 projects");

        vm.stopBroadcast();

        vm.startBroadcast(user2PrivateKey);

        fundify.fundProject{value: 2 ether}(user2PublicKey, 0);
        fundify.fundProject{value: 1 ether}(user2PublicKey, 1);
        fundify.fundProject{value: 2 ether}(user2PublicKey, 2);

        vm.stopBroadcast();

        vm.startBroadcast(user3PrivateKey);

        fundify.fundProject{value: 2 ether}(user2PublicKey, 0);
        fundify.fundProject{value: 1 ether}(user2PublicKey, 1);
        fundify.fundProject{value: 2 ether}(user2PublicKey, 2);

        vm.stopBroadcast();

        vm.startBroadcast(user4PrivateKey);

        fundify.fundProject{value: 2 ether}(user2PublicKey, 0);
        fundify.fundProject{value: 1 ether}(user2PublicKey, 1);
        fundify.fundProject{value: 2 ether}(user2PublicKey, 2);

        vm.stopBroadcast();

        vm.startBroadcast(user5PrivateKey);

        fundify.fundProject{value: 2 ether}(user2PublicKey, 0);
        fundify.fundProject{value: 1 ether}(user2PublicKey, 1);
        fundify.fundProject{value: 2 ether}(user2PublicKey, 2);

        vm.stopBroadcast();

        vm.startBroadcast(user3PrivateKey);

        fundify.createProject(10 ether, 2);
        fundify.createProject(5 ether, 3);
        fundify.createProject(20 ether, 4);
        console.log("Created 3 projects");

        vm.stopBroadcast();

        vm.startBroadcast(user2PrivateKey);

        fundify.fundProject{value: 2 ether}(user3PublicKey, 0);
        fundify.fundProject{value: 1 ether}(user3PublicKey, 1);
        fundify.fundProject{value: 2 ether}(user3PublicKey, 2);

        vm.stopBroadcast();

        vm.startBroadcast(user3PrivateKey);

        fundify.fundProject{value: 2 ether}(user3PublicKey, 0);
        fundify.fundProject{value: 1 ether}(user3PublicKey, 1);
        fundify.fundProject{value: 2 ether}(user3PublicKey, 2);

        vm.stopBroadcast();

        vm.startBroadcast(user4PrivateKey);

        fundify.fundProject{value: 2 ether}(user3PublicKey, 0);
        fundify.fundProject{value: 1 ether}(user3PublicKey, 1);
        fundify.fundProject{value: 2 ether}(user3PublicKey, 2);

        vm.stopBroadcast();

        vm.startBroadcast(user5PrivateKey);

        fundify.fundProject{value: 2 ether}(user3PublicKey, 0);
        fundify.fundProject{value: 1 ether}(user3PublicKey, 1);
        fundify.fundProject{value: 2 ether}(user3PublicKey, 2);

        vm.stopBroadcast();
    }
}