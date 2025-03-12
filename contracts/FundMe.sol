// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract FundMe {

    uint256 public minimumUsd  = 5;

    function fund() public payable {
        require(msg.value > minimumUsd, "didn't send enough Ethereum");
    }

    function getPrice() public {
        //0x694AA1769357215DE4FAC081bf1f309aDC325306

    }
    function getConversionRate() public {}

    function getVersion() public view returns (uint256) {
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        return priceFeed.version();
    } 
}