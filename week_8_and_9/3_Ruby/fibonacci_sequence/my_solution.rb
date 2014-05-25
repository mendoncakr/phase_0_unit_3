# U3.W8-9: 


# I worked on this challenge first by myself and then with Tim Howard on 5/21/2014

# 2. Pseudocode
# define fibonacci sequence method
# determine fibonacci equation
# insert base case
# 

# 3. Initial Solution

# def perfect_square?(num)
# 	square = Math.sqrt(num)
# 	if square - square.to_i == 0
# 		true
# 	else
# 		false
# 	end
# end


# def is_fibonacci?(num)
# 	if perfect_square?(5 * (num ** 2 )+ 4) || perfect_square?(5 * (num ** 2 ) - 4)
# 		true
# 	else
# 		false
# 	end
# end

# def is_fibonacci?(num)
#     if (Math.sqrt((5 * num ** 2) + 4) % 1 == 0) || (Math.sqrt((5 * num ** 2) - 4) % 1 == 0)
#       return true 
#     else 
#       return false
# end
# end

def is_fibonacci?(num)
	fib_sequence = [0] # array to hold all fib numbers until last number is greater than or equal to num argument
	num_to_add =[1, 1] 

	until fib_sequence[-1] >= num	
		num_to_add << num_to_add[0] + num_to_add[1]
		fib_sequence << num_to_add.shift
	end
	
	fib_sequence.include?(num)
end


# 4. Refactored Solution



# 1. DRIVER TESTS GO BELOW THIS LINE
p is_fibonacci?([0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,6765,10946].sample) == true
p is_fibonacci?(8670007398507948658051921) ==  true
p is_fibonacci?(927372692193078999171) == false



# 5. Reflection 
# Initially, I approached this challenge in completely different way than was expected. From the wiki page, it says thats a # is only a fibonacci number if and only if it is a perfect square of
# this equation (5x**2 + 4) &  (5x**2 - 4). Although I had solved for those and my code seems right, it wasn't passing the tests. 