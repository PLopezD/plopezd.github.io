#U2.W6: Attr Methods

# I worked on this challenge by myself.

# Step 1: refactor this code to move method assignments to attr_ attributes. Like we did with age. Lets pare down the superflous code.

# Step 2: write a new class called Kim that has 3 methods, happy_birthday, change_job, and name_change. 
# Initialize this new class with an instance of class Profile and use your methods that you created with attr_ to change the values of the instance variables.

# Your Code Here:

class Profile
# first lets finish refactoring this code (note that there is a way to add all of the variables like :age on one line, how would we do that?):
  attr_accessor :age
  attr_accessor :name
  attr_accessor :occupation

  def initialize
    @age = 27
    @name = "Kim"
    @occupation = "Cartographer"
  end

  def print_info
    puts
    puts "age: #{@age}"
    puts
    puts "name: #{@name}"
    puts
    puts "occupation: #{@occupation}"
    puts
  end
end
class Kim

  def initialize
    @profile = Profile.new
  end

  def happy_birthday(newage)
    @profile.age = newage
  end

  def change_job(newjob)
    @profile.occupation = newjob
  end

  def name_change(newname)
    @profile.name = newname
  end

  def print_info
    puts
    puts "Age: #{@profile.age}"
    puts
    puts "Name: #{@profile.name}"
    puts
    puts "Occupation: #{@profile.occupation}"
    puts
  end

end






instance_of_profile = Profile.new

p instance_of_profile.age
p instance_of_profile.name
p instance_of_profile.occupation
p "----- CHANGING -----"
instance_of_profile.age = 28
instance_of_profile.name = "Taylor"
instance_of_profile.occupation = "Rare Coins Trader"
p instance_of_profile.age
p instance_of_profile.name
p instance_of_profile.occupation

kimtwo = Kim.new

kimtwo.happy_birthday(50)
kimtwo.change_job("Exotic Cat Sales Woman")
kimtwo.name_change("Carmen San Diego")
kimtwo.print_info

# Release 5: Reflect


# This was a tricky project. In the Kim subclass I kept trying to use attr_attributes to call Profile's instance variables 
# and reset them to the new values without having to create the methods. After 20 minutes of trying to figure out why I
# couldn't do that I caved and created the methods. I am sure there is a way to use attr_attributes in that instance however so 
# I will continue to look into that. Other than that I am glad to learn attr_attributes, they save a lot of time and will prove
# useful when refactoring/debugging and just wanting to see what the value of my variables are at any given time.