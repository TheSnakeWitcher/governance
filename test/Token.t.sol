// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "../lib/forge-std/src/Test.sol" ;
import "./TestUtil.t.sol" ;
import "../src/Token.sol" ;

contract MyTokenTest is Test , TestUtil {

    string constant TOKEN_NAME = "my_token_name" ;
    string constant TOKEN_SYMBOL = "my_token_symbol";

    MyToken testContract ;

    function setUp() public {
        _localFork = vm.createFork(vm.rpcUrl("local")) ;
        vm.selectFork(_localFork) ;
        testContract = new MyToken(TOKEN_NAME,TOKEN_SYMBOL) ;
    }

    function test_createdWithName() public {
        assertEq(testContract.name(),TOKEN_NAME);
    }

    function test_createdWithSymbol() public {
        assertEq(testContract.symbol(),TOKEN_SYMBOL);
    }

    function test_createdWithTotalSupply() public {
        /* code */
    }

    function test_canBeBurned() public {
        /* code */
    }

    function testFail_canBeTransfered() public {
        /* code */
    }

    function test_canBeMinted() public {
        /* code */
    }

    function test_canBeMinted_PassingTest() public {
        /* code */
    }

    function test_canBeMinted_BringingReferrals() public {
        /* code */
    }

    function test_canBeMinted_TeachingOthers() public {
        /* code */
    }

}
