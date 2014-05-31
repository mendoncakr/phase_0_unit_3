# U3.W8-9: OO Basics: Student


# I worked on this challenge by myself.

# 2. Pseudocode

# set instance variables
# define average method
# copy letter grade method from socrates
# define linear search method outside of class
  # input is an array and a string which is the name to search
  # output is the index at which the name is found or -1 if not found



# 3. Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, scores)   #Use named arguments! 
    @scores = scores #Why is this line necessary for me to print out @scores when calling average if attr_accessor is already there?
    @first_name = first_name
  end

  def average
    totalSum = 0
    @scores.each do |score|
      totalSum += score
    end
    @average = totalSum / @scores.length
    return @average
  end

  def letter_grade
    case @average
    when 0...60
     'F'
    when 60...70
     'D'
    when 70...80
     'C'
    when 80...90
     'B'
    when 90..100
     'A'
  end
end

end


def linear_search(array, student_name)
  array.each do |object|
    if object.first_name == student_name
      return array.index(object)
    # else #Not sure why this doesnt allow for the last test to run
    #   -1
    end
  end
  -1 # When this -1 is outside the the loop, it runs 
end


Alex = Student.new("Alex", [100,100,100,0,100])
Ken = Student.new("Ken", [100,100,100,95,110])
Naomi = Student.new("Naomi", [100, 55, 75, 100, 95])
Rolf = Student.new("Rolf", [75, 75, 75, 85, 100])
Sophia = Student.new("Sophia", [69, 69, 96, 96, 100])

students = [Alex, Ken, Naomi, Rolf, Sophia]

# 4. Refactored Solution
# Not sure what I can refactor. I find that as I code, I refine along the
# 1. DRIVER TESTS GO BELOW THIS LINE
# Assert Statements
def assert
  raise "Assertion Failed!" unless yield
end

assert{ students[0].first_name == "Alex" }
assert{ students[0].scores.length == 5 }
assert{ students[0].scores[0] == students[0].scores[4] }
assert{ students[0].scores[3] == 0 }
assert{ students[0].average == 80 }
assert{ students[0].letter_grade == 'B'}

assert{ linear_search(students, "Sophia") == 4 }
assert{ linear_search(students, "NOT A STUDENT") == -1 }

p linear_search(students, "Ken") == 1
p linear_search(students, "NOT A STUDENT") == -1 #=> [#<Student:0x007f9333889ac8 @scores=[100, 100, 100, 0, 100], @first_name="Alex">, #<Student:0x007f9333889a50 @scores=[100, 100, 100, 95, 110], @first_name="Ken">, #<Student:0x007f93338899d8 @scores=[100, 55, 75, 100, 95], @first_name="Naomi">, #<Student:0x007f9333889960 @scores=[75, 75, 75, 85, 100], @first_name="Rolf">, #<Student:0x007f93338898e8 @scores=[69, 69, 96, 96, 100], @first_name="Sophia">]


# 5. Reflection 
#  I actually really enjoyed this challenge as it gave me more practice with OOP. It helped me learn about instance variables and instance ethods.
# When where and why to use them. I had trouble with the linear statement because it would pass the tests, but not When
# I changed the arguments. I am still unsure why the -1 has to be outside the loop. (line 61)
