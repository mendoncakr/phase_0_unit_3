# U3.W8-9: Reverse Words


# I worked on this challenge my self.

# 2. Pseudocode
# define reverse_words method
# input should be a sentence
# output should be the same sentence, but each word reversed

# reverse each word from sentence
# append it to a list
# join the list and print ou

# 3. Initial Solution

def reverse_words(sentence)
	to_reverse = sentence.split()
	reversed_string = []

	to_reverse.each do |word|
		reversed_string << word.reverse
	end
	return reversed_string.join(" ")

end


# 4. Refactored Solution

# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
# def random_word(length = 5)
#   rand(36**length).to_s(36)
# end

# def assert
#   raise "Assertion failed!" unless yield
# end

# word1 = random_word
# word2 =random_word

# puts assert {reverse_words(word1) == word1.reverse}
# puts assert {reverse_words(word1 word2) == word1.reverse + word2.reverse}


# 5. Reflection 
# THis was unusually easy for a week 9 challenge. I found that this was a walk in the park compared to 
# some of the other challenges in thsi section such as num_to_words .Regardless, it was nice to be able to  get back ino Ruby code.