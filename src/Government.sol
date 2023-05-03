// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

// import {Governor} from "../lib/openzeppelin-contracts/contracts/governance/Governor.sol"} ;
import "../lib/openzeppelin-contracts/contracts/governance/extensions/GovernorSettings.sol" ;
// import "../lib/openzeppelin-contracts/contracts/governance/extensions/GovernorVotes.sol" ;
import "../lib/openzeppelin-contracts/contracts/governance/extensions/GovernorVotesQuorumFraction.sol" ;
import { GovernorCountingSimple } from "../lib/openzeppelin-contracts/contracts/governance/extensions/GovernorCountingSimple.sol" ;

contract Government is GovernorSettings , GovernorVotesQuorumFraction , GovernorCountingSimple {

    constructor(
        string memory name_,
        uint256 initialVotingDelay,
        uint256 initialVotingPeriod,
        uint256 initialProposalThreshold,
        address tokenAddress,
        uint256 quorumNumeratorValue
    ) Governor(name_)
      GovernorSettings(initialVotingDelay,initialVotingPeriod,initialProposalThreshold)
      GovernorVotes(IVotes(tokenAddress))               
      GovernorVotesQuorumFraction(quorumNumeratorValue)
    {}

    /**
     * @dev See {Governor-proposalThreshold}.
     */
    function proposalThreshold() public view virtual override(Governor,GovernorSettings) returns (uint256) {
        return super.proposalThreshold();
    }

}
