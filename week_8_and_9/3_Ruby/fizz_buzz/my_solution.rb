# U3.W8-9: 


# I worked on this challenge by myself.

# 2. Pseudocode
# define function
# iterate through array
# determine if number is first divisible by 15
	# if so, replace array element at corresponding index with string "FizzBuzz"
	# else if, divisible by 5, replace with string "Buzz"
	# else if, divisible by 3, replace with string "Fizz"
	# else, keep number as is
# return new array

# 3. Initial Solution

def super_fizzbuzz(array)
	array.map! {|number| 
		if  number % 15 == 0
			array[array.rindex(number)] = 'FizzBuzz'
		elsif number % 5 == 0
			array[array.rindex(number)] = 'Buzz'
		elsif number % 3 == 0
			array[array.rindex(number)] = 'Fizz'
		else 
			array[array.rindex(number)] = number 
		end			
	}
	return array
end

# 4. Refactored Solution

# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
p super_fizzbuzz((1..100).map {|i| 3**(1+rand(15))}) == ["Fizz"]*100
p super_fizzbuzz((1..100).map {|i| 5**(1+rand(15))}) == ["Buzz"]*100
p super_fizzbuzz((1..100).map {|i| 15**(1+rand(15))}) == ["FizzBuzz"]*100
p super_fizzbuzz([1,2,3]) == [1,2, 'Fizz']
p super_fizzbuzz([15,5,3,1]) == ['FizzBuzz', 'Buzz', 'Fizz', 1]

# 5. Reflection 
# When I initially started this challenge i was quite worried because it felt as if I hadn't done Ruby in ages.
# Just minutes before, I could even begin the JS challenges because it had been so long since I week 1.
# But when I put my worries aside, and tackled the problem head on, I found that I solved it within 10 minutes.