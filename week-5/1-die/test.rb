class Die
  def initialize(sides)
	unless sides > 1
    	raise ArgumentError.new("Number of sides must be greater than 1")
  end
  	@sides = sides
  end

  attr_accessor :sides
  
  def sides
    return @sides
  end
  
  def roll
  	rand(sides)
  end
end


fuck = Die.new(20)

p fuck.sides
p fuck.roll