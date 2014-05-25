# U3.W7: BONUS Using the SQLite Gem

# I worked on this challenge myself and with a friend of mine who is NOT in DBC.

require 'sqlite3'


$db = SQLite3::Database.open "congress_poll_results.db"


def print_arizona_reps
  puts "AZ REPRESENTATIVES"
  az_reps = $db.execute("SELECT name FROM congress_members WHERE location = 'AZ'")
  az_reps.each { |rep| puts rep }
end

def print_longest_serving_reps(minimum_years)  #sorry guys, oracle needs me, i didn't finish this!
  puts "LONGEST SERVING REPRESENTATIVES"
  longest_serve_time = $db.execute("SELECT name, years_in_congress FROM congress_members WHERE years_in_congress > #{minimum_years}")
  longest_serve_time.each {|rep, time| puts rep.to_s + " - " + time.to_s + " years"}
end

def print_lowest_grade_level_speakers(grade_level)
  puts "LOWEST GRADE LEVEL SPEAKERS (less than < 8th grade)"
  lowest_level_speakers = $db.execute ("SELECT name FROM congress_members WHERE grade_current <= #{grade_level}")
  lowest_level_speakers.each {|speaker| puts speaker}
end

def print_separator
  puts 
  puts "------------------------------------------------------------------------------"
  puts 
end

def print_state_reps
	puts "State representatives from New York, New Jersey, Maine, Florida, and Alaska are:"
	state_reps = $db.execute("SELECT name, location 
		FROM congress_members 
		WHERE location = 'NY' OR location = 'NJ' OR location = 'ME' OR location = 'FL' OR location = 'AK'
		ORDER BY location;
		")
	state_reps.each {|rep, state| puts rep.to_s + " - " + state.to_s}
end


# print_arizona_reps
# print_separator

# print_longest_serving_reps(35)
# TODO - Print out the number of years served as well as the name of the longest running reps
# output should look like:  Rep. C. W. Bill Young - 41 years

# print_separator
# print_lowest_grade_level_speakers(8)

# print_state_reps
# TODO - Make a method to print the following states representatives as well:
# (New Jersey, New York, Maine, Florida, and Alaska)
# TODO - Need to be able to pass the grade level as an argument, look in schema for "grade_current" column
# print print_separator

##### BONUS #######
# TODO (bonus) - Stop SQL injection attacks!  Statmaster learned that interpolation of variables in SQL statements leaves some security vulnerabilities.  Use the google to figure out how to protect from this type of attack.





# TODO (bonus)
# Create a listing of all of the Politicians and the number of votes they recieved
# output should look like:  Sen. John McCain - 7,323 votes (This is an example, yours will not return this value, it should just 
#    have a similar format)

def print_rep_and_vote_number
  reps_and_vote_count = $db.execute("
    SELECT name, COUNT(politician_id) 
    FROM votes JOIN congress_members ON votes.politician_id = congress_members.id
    GROUP BY name
    ")
  reps_and_vote_count.each{ |rep, votes | puts rep + " -- "+ votes.to_s + " votes" }
end
# Note sure if the above is the correct query for determing the number of votes per politician.
# print_rep_and_vote_number



def print_reps_and_their_voters
  rep_and_voters = $db.execute("
    SELECT congress_members.name, voters.first_name, voters.last_name
    FROM congress_members
      JOIN votes
          ON votes.politician_id = congress_members.id
      JOIN voters
          ON votes.voter_id = voters.id")
  
   congressman_and_voters = Hash.new

   rep_and_voters.each do |rep|
    congressman = rep[0]
    congressman_and_voters[congressman] = []  
  end

  # For the above code, I managed to create a hash with the key being the congressman and the value to be an empty array that would
  # hold the names of all voters who voted for said congressman. Although, I couldn't quite figure out the best way to
  # add the names of the voters individually and also print them. Due to time contraints, I left it as is.




  print congressman_and_voters


    # if congressman_and_voters[congressman] 
    #   congressman_and_voters[congressman] += array[1] + ' ' + array[2] + ', ' #adding a long string, i want to add individual string names.
    # else
    #   congressman_and_voters[congressman] = array[1] + ' ' + array[2]+ ', '
end
#still need to find a way to print out ALL values of each key in a string.

print_reps_and_their_voters

# Create a listing of each Politician and the voter that voted for them
# output should include the senators name, then a long list of voters separated by a comma
#
# * you'll need to do some join statements to complete these last queries!


# REFLECTION- Include your reflection as a comment below.
# How does the sqlite3 gem work?  What is the variable `$db` holding?  
# The $db variable is holding the physical congress poll results database. It includes 3 tables: congress_members, votes, and voters.

# Try to use your knowledge of ruby and OO to decipher this as well as h
# ow the `#execute` method works.  Take a stab at explaining the line 
# `$db.execute("SELECT name FROM congress_members WHERE years_in_congress 
#   > #{minimum_years}")`.  Try to explain this as clearly as possible for 
# your fellow students.  

# From my undestanding the #execute method runs the query via the sqlite3 gem. 
# By holding the  congress poll results database in a ruby object we can access it through the sqlite3 gem and query it
# as we normally would in the terminal. i.e. (SELECT what_we_want FROM table WHERE query_conditions_here) The gem gives us the same functionality
# in ruby code as we would have via terminal.

# I found the bonus to be quite challenging, especially the last one. I wasn't sure if my query for congresman and their voters
# was correct or not. However, I did get a working answer, so I used a hash to hold the voters as the values of the key (congressman) and
# want to flatten out the 


