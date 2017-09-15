pragma solidity ^0.4.13;

contract Greeter {
	/* Add one variable to hold our greeting */
	string greeting;
	uint numGreetings = 0;


	function Greeter(string _greeting) public {
		/* Write one line of code for the contract to set our greeting */
		greeting = _greeting;
	}

	function greet() returns (string)  {
		/* Write one line of code to allow the contract to return our greeting */
		numGreetings++;
		return greeting;
	}

	function greetings() returns (uint) {
		return numGreetings;
	}


}

contract GreeterCreater {
	function createGreeting(string _greeting) returns (Greeter) {
		return new Greeter(_greeting);
	}

	function greetings(Greeter greeterAddress) returns (uint) {
		return greeterAddress.greetings();
	}

	function greet(Greeter greeterAddress) returns (string) {
        /* this breaks my code on Remix I think it is because strings
        are dynamic in memory and REMix does not like it
        */
		return greeterAddress.greet();
	}
}
