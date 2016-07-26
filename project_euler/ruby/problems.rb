# Project Euler (https://projecteuler.net)
# Solutions by James Thomson

# Problem 1. Find the sum of all the multiples
# of 3 or 5 below 1000.

def problem1(n)
	sum = 0
	(0..n-1).each do |num|
		if (num % 3 == 0 or num % 5 == 0)
			sum += num
		end
	end
	sum
end

puts "The answer to Problem 1 with n = 1000 is " + problem1(1000).to_s

# Problem 2. By considering the terms in the Fibonacci
# sequence whose values do not exceed four million, find
# the sum of the even valued terms.
def problem2(n)
	total = 2
	previous = 1
	current = 2
	while (current < n)
		newTerm = current + previous
		previous = current
		current = newTerm
		if (current % 2 == 0)
			total += current
		end
	end
	total
end

puts "The answer to Problem 2 with n = 4000000 is " + problem2(4000000).to_s

# Problem 3.  The prime factors of 13195 are 5, 7, 13, and 29.
# What is the largest prime factor of the number 600851475143?

def problem3(n)
	largest_factor = 0
	prime_counter = 2
	while prime_counter * prime_counter <= n do
		if n % prime_counter == 0
			n /= prime_counter
			largest_factor = prime_counter
		else
			prime_counter += 1
		end
	end
	if n > largest_factor
		largest_factor = n
	end
	largest_factor
end

puts "The answer to Problem 3 with n = 600851475143 is " + problem3(600851475143).to_s
