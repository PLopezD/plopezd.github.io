
class Die
  def initialize(sides)
	unless sides.is_a?(Array)
    	raise ArgumentError.new("You must enter an array")
  end

  	@sides = sides
  end

  attr_accessor :sides

  
  def sides
    return @sides.size
  end
  
  def roll
  	@sides.sample
  end
end


a = ["a","b","c","d","e","f"]

fuck = Die.new(a)

p fuck.sides
p fuck.roll