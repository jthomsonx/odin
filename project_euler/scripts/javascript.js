// Project Euler (https://projecteuler.net)

// Problem 1. Find the sum of all the multiples
// of 3 or 5 below 1000.
var problem1 = function() {
	var sum = 0;
	var limit = document.getElementById("limit").value;
	for (var i = 1; i < limit; i++) {
		if ( (i % 3 === 0) || (i % 5 === 0)) {
			sum += i;
		}
	}
	document.getElementById("answer1").innerHTML = sum;
}

// Problem 2. By considering the terms in the Fibonacci
// sequence whose values do not exceed four million, find
// the sum of the even valued terms.
var problem2 = function() {
	// Setting the total variable initially = 2 will ensure the '2' itself 
	// is captured in the calculated total.
	var total = 2;
	var fibLimit = document.getElementById("fibLimit").value;
	var previous = 1;
	var current = 2;
	while (current < fibLimit) {
		var newTerm = current + previous;
		previous = current;
		current = newTerm;
		if (current % 2 === 0) {
			total += current;
		}
	}
	document.getElementById("answer2").innerHTML = total;
}

// Problem 3.  The prime factors of 13195 are 5, 7, 13, and 29.
// What is the largest prime factor of the number 600851475143?
var problem3 = function() {
	var primeLimit = document.getElementById("primeLimit").value;
	var x = primeLimit - 1;
	var answer = 0;
	while (x > 0) {
		if (primeLimit % x === 0) {
			x = answer;
			x = false;
		}
		else {
			x--;
		}
	}
	document.getElementById("answer3").innerHTML = answer;
}