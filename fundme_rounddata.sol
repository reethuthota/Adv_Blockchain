//SPDX-License-Identifier:MIT
pragma solidity ^0.7.0;


//import "./AggregatorV3Interface.sol"
//import directly from github
import "@chainlink/contracts/src/v0.7/interfaces/AggregatorV3Interface.sol";

/*interface AggregatorV3Interface {
  function decimals() external view returns (uint8);

  function description() external view returns (string memory);

  function version() external view returns (uint256);

  // getRoundData and latestRoundData should both raise "No data present"
  // if they do not have data to report, instead of returning unset values
  // which could be misinterpreted as actual reported values.
  function getRoundData(uint80 _roundId)
    external
    view
    returns (
      uint80 roundId,
      int256 answer,
      uint256 startedAt,
      uint256 updatedAt,
      uint80 answeredInRound
    );

  function latestRoundData()
    external
    view
    returns (
      uint80 roundId,
      int256 answer,
      uint256 startedAt,
      uint256 updatedAt,
      uint80 answeredInRound
    );
}*/
contract FundMe
{
    

    function deci()public view returns(uint256){
        AggregatorV3Interface PriceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        return PriceFeed.decimals();

    }

    function rounddata(uint80 round_id)public view returns(uint256){
        AggregatorV3Interface PriceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        ( ,int256 answer, , ,)= PriceFeed.getRoundData(round_id);
        return uint256(answer * 1e10);
    }
}