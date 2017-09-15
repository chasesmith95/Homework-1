pragma solidity ^0.4.16;


contract Fibonacci {
	function calculate(uint position) returns (uint result) {
		/* Add one variable to hold our greeting */
		if (position <= 1) {
			return (1);
		} else {
			return (calculate(position - 1) + calculate(position - 2));
		}
	}

	/* Add a fallback function to prevent contract payability and non-existent function calls */
	function() {}
}
