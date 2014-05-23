# U3.W8-9: OO Basics: Student


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode



# 3. Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, scores)   #Use named arguments! 
  	@scores = scores #Why is this line necessary for me to print out @scores when calling average if attr_accessor is already there?
  	@first_name =first_name
  end

  def average
  end

end



Alex = Student.new("Alex", [100,100,100,0,100])
Ken = Student.new("Ken", [100,100,100,95,110])
Naomi = Student.new("Naomi", [100, 55, 75, 100, 95])
Rolf = Student.new("Rolf", [75, 75, 75, 85, 100])
Sophia = Student.new("Sophia", [69, 69, 96, 96, 100])

students = [Alex, Ken, Naomi, Rolf, Sophia]

# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
# Tests for release 0:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Tests for release 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Tests for release 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1





# 5. Reflection 