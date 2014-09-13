# U3.W7: BONUS Using the SQLite Gem

# I worked on this challenge with Dustin Snyder

=begin

require 'sqlite3'


$db = SQLite3::Database.open "congress_poll_results.db"


def print_state_list *states
	states.each do |state|
		print_state_reps state
		puts "\n"
	end
end



def print_state_reps(state)
	state.length == 2 ? (state.upcase!) : (return p "Please input state initials as two characters.")
	
  puts "#{state} REPRESENTATIVES"
  state_reps = $db.execute("SELECT name FROM congress_members WHERE location = '#{state}'")
  state_reps.each { |rep| puts rep }
end

def print_longest_serving_reps(minimum_years)  #sorry guys, oracle needs me, i didn't finish this!
  puts "LONGEST SERVING REPRESENTATIVES"
  longest_serving_reps = $db.execute("SELECT name,years_in_congress FROM congress_members WHERE years_in_congress > #{minimum_years}")
  longest_serving_reps.each { |rep| puts "#{rep[0]} - #{rep[1]} years" }
end

def print_lowest_grade_level_speakers(lowest_grade_level)
  puts "LOWEST GRADE LEVEL SPEAKERS (less than < #{lowest_grade_level} grade)"
  lowest_grade_reps = $db.execute("SELECT name FROM congress_members WHERE grade_current < #{lowest_grade_level}")
  lowest_grade_reps.each { |rep| puts rep }
end

def print_separator
  puts 
  puts "------------------------------------------------------------------------------"
  puts 
end

=end

require 'sqlite3'

$db = SQLite3::Database.open "congress_poll_results.db"         

def print_state_list *states
	states.each do |state|
		print_state_reps state
		puts "\n"
	end
end

def print_state_reps(state)
	state.length == 2 ? (state.upcase!) : (return p "Please input state initials as two characters.")
  puts "#{state} REPRESENTATIVES"
  stm = $db.prepare("SELECT name FROM congress_members WHERE location = ?")
  stm.bind_param 1, state
  state_reps = stm.execute
  state_reps.each { |rep| puts rep }
end

def print_longest_serving_reps(minimum_years)  #sorry guys, oracle needs me, i didn't finish this!
  puts "LONGEST SERVING REPRESENTATIVES"
  stm = $db.prepare("SELECT name,years_in_congress FROM congress_members WHERE years_in_congress > ?")
  stm.bind_param 1, minimum_years
  longest_serving_reps = stm.execute
  longest_serving_reps.each { |rep| puts "#{rep[0]} - #{rep[1]} years" }
end

def print_lowest_grade_level_speakers(lowest_grade_level)
  puts "LOWEST GRADE LEVEL SPEAKERS (less than < #{lowest_grade_level} grade)"
  stm = $db.prepare("SELECT name FROM congress_members WHERE grade_current < ?")
  stm.bind_param 1, lowest_grade_level
  lowest_grade_reps = stm.execute
  lowest_grade_reps.each { |rep| puts rep }
end

def print_total_votes
	puts "Number of Votes for Each Politician"
	vote_counts = $db.execute("SELECT name,count(voter_id) FROM congress_members JOIN votes ON congress_members.id=politician_id GROUP BY name")
	vote_counts.each do |x|
		puts "#{x[0]} - #{x[1]} votes"
	end
end

def print_votes_by_politician
	puts "Name of Each Politician and Their Voters"
	vote_list = $db.execute("SELECT name, first_name, last_name FROM congress_members JOIN votes ON congress_members.id = politician_id JOIN voters on voter_id=voters.id order by name")
	senator_list = vote_list.map { |a| a[0] }.flatten.uniq
	senator_list.each do |senator_name|
		name_list = []
		vote_list.each do |v|
			if senator_name == v[0]
				name_list << "#{v[1]} #{v[2]}"
			end
		end
		puts "#{senator_name} " << name_list.join(', ')[0..-3]
	end
end

=begin
	get list of senators
	for each senator
		name_list = ''
		cycle through vote_list
			check first param is equal to senator
			if it is append fn and ln to list and comma space
		end cycle
		remove last space and comma from name_list
		puts senetaor and name list
	end for
=end

def print_separator
  puts 
  puts "------------------------------------------------------------------------------"
  puts 
end

print_state_reps('fl')

print_separator

print_longest_serving_reps(35)
# TODO - Print out the number of years served as well as the name of the longest running reps
# output should look like:  Rep. C. W. Bill Young - 41 years

print_separator
print_lowest_grade_level_speakers(8)
# TODO - Need to be able to pass the grade level as an argument, look in schema for "grade_current" column

# TODO - Make a method to print the following states representatives as well:
# (New Jersey, New York, Maine, Florida, and Alaska)
print_state_list 'nj','ny','me','fl','ak'

##### BONUS #######
# TODO (bonus) - Stop SQL injection attacks!  Statmaster learned that interpolation of variables in SQL statements leaves some security vulnerabilities.  Use the google to figure out how to protect from this type of attack.

# TODO (bonus)
# Create a listing of all of the Politicians and the number of votes they recieved
# output should look like:  Sen. John McCain - 7,323 votes (This is an example, yours will not return this value, it should just 
#    have a similar format)
print_separator
print_total_votes

# Create a listing of each Politician and the voter that voted for them
# output should include the senators name, then a long list of voters separated by a comma
#
# * you'll need to do some join statements to complete these last queries!
print_separator
print_votes_by_politician


# REFLECTION- Include your reflection as a comment below.
# How does the sqlite3 gem work?  What is the variable `$db` holding? 
## seems sqlite3 gem works but access the database through ruby commands, $db is the database

# Try to use your knowledge of ruby and OO to decipher this as well as h
# ow the `#execute` method works.  Take a stab at explaining the line 
# `$db.execute("SELECT name FROM congress_members WHERE years_in_congress 
#   > #{minimum_years}")`.  Try to explain this as clearly as possible for 
# your fellow students.  
## Execute is telling it to go to the database and do the pull in the parenthisis
## This was a challenging but rewarding project, im glad I got to do it.