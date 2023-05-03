// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "../lib/forge-std/src/Test.sol" ;
import "./TestUtil.t.sol" ;
import "../src/Government.sol" ;
import "./Token.t.sol" ;

contract GovernmentTest is Test , TestUtil {
    uint256 constant POLYGON_BLOCKTIME = 2 ; // 2 seconds
    uint256 constant INITIAL_VOTING_DELAY_SECONDS = 3*24*60*60 ;
    uint256 constant INITIAL_VOTING_PERIOD_SECONDS = 7*24*60*60 ;

    // uint256 constant INITIAL_VOTING_DELAY = POLYGON_BLOCKTIME * 129600.0;   // 3 days
    // uint256 constant INITIAL_VOTING_PERIOD = POLYGON_BLOCKTIME * 302400.0 ; // 1 week

    string  constant GOVERNMENT_NAME = "my_government_name" ;
    uint256 constant INITIAL_VOTING_DELAY = INITIAL_VOTING_DELAY_SECONDS / POLYGON_BLOCKTIME ;
    uint256 constant INITIAL_VOTING_PERIOD = INITIAL_VOTING_PERIOD_SECONDS / POLYGON_BLOCKTIME ;
    uint256 constant INITIAL_PROPOSAL_THRESHOLD = 1 ;
    uint256 constant QUORUM_NUMERATOR_VALUE = 4 ;

    Government testContract ;

    function setUp() public {
        IVotes token = new MyToken("token_name","token_symbol") ;

        testContract = new Government(
             GOVERNMENT_NAME,
             INITIAL_VOTING_DELAY,
             INITIAL_VOTING_PERIOD,
             INITIAL_PROPOSAL_THRESHOLD,
             address(token),
             QUORUM_NUMERATOR_VALUE
        ) ;
    }

    /* code */

}
