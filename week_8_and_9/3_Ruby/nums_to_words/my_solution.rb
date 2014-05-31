# U3.W8-9: Numbers to English Words


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode
# define in_words method
# create hash with all key-value pairs for numbers


# 3. Initial Solution


def num_to_words(number)

	number_string = ""
	to_write = number - (number % 10)
	leftover = number % 10


	numbers_and_letters = {
	0 => "zero",	
	1 => "one",
	2 => "two",
	3 => "three",
	4 => "four",
	5 => "five",
	6 => "six",
	7 => "seven",
	8 => "eight",
	9 => "nine",
	10 => "ten",
	11 => "eleven",
	12 => "twelve",
	13 => "thirteen",
	14 => "fourteen",
	15 => "fifteen",
	16 => "sixteen",
	17 => "seventeen",
	18 => "eighteen",
	19 => "nineteen",
	20 => "twenty",
	30 => "thirty",
	40 => "forty",
	50 => "fifty",
	60 => "sixty",
	70 => "seventy",
	80 => "eighty",
	90 => "ninety",
	100 => "hundred",
	1000 => "thousand",
}	


	if number <= 20
		numbers_and_letters[number]
	# elsif 100 <= number <= 999
		
	else # 100 or less
		number_string << numbers_and_letters[to_write] << "-" << numbers_and_letters[leftover]
	end 





	number_string
end
# 4. Refactored Solution



# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
# p num_to_words(21) == "twenty-one"
# p num_to_words(31) == "thirty-one"
p num_to_words(100)





# 5. Reflection 