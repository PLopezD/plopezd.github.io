#U2.W6: Attr Methods

# I worked on this challenge [by myself, with:]

# Step 1: refactor this code to move method assignments to attr_ attributes. Like we did with age. Lets pare down the superflous code.

# Step 2: write a new class called Kim that has 3 methods, happy_birthday, change_job, and name_change. Initialize this new class with an instance of class Profile and use your methods that you created with attr_ to change the values of the instance variables.


# Your Code Here:

class Profile
# first lets finish refactoring this code (note that there is a way to add all of the variables like :age on one line, how would we do that?):
  attr_accessor :age

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

  def what_is_name
    @name
  end

  def change_my_name=(new_name)
    @name = new_name
  end

  def what_is_occupation
    @occupation
  end

  def change_my_occupation=(new_occupation)
    @occupation = new_occupation
  end


end


# Release 5: Reflect