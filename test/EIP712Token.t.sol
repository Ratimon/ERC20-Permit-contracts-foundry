// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

// import {console} from "@forge-std/console.sol";
import {Test} from "@forge-std/Test.sol";

import {TestToken} from "@main/EIP712Token.sol";

import {Deployer, getDeployer} from "forge-deploy/Deployer.sol";
import {DeployTestTokenScript} from "@script/000_DeployEIP712Token.s.sol";

contract TestToken_Test is Test {
    Deployer deployerProcedue;

    TestToken token;

    function setUp() external {
        deployerProcedue = getDeployer();
        deployerProcedue.setAutoBroadcast(false);

        DeployTestTokenScript TestTokenDeployments = new DeployTestTokenScript();

        deployerProcedue.activatePrank(vm.envAddress("DEPLOYER"));

        token = TestTokenDeployments.deploy();

        deployerProcedue.deactivatePrank();
    }

    function test_constructor() external {
        address owner = vm.envAddress("DEPLOYER");

        assertEq(token.balanceOf(owner), 1000 ether);
    }
}
