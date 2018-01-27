pragma solidity ^0.4.17;

contract BeatyContest {
  address public owner;

  mapping (address => uint) votes;
  uint votesQty;
  uint sum;

  event logString(string);

  function BeatyContest () public {
    owner = msg.sender;
  }

  function vote(uint _value) public payable returns(bool success) {
    if (votes[msg.sender] > 0) {
      logString("youve already voted");
      return false;
    } else {
      votes[msg.sender] = _value;
      sum += _value;
      votesQty += 1;
      logString("voted!");
      return true;
    }
  }


  function getMean() returns(uint mean) {

  }
}