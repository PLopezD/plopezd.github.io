# U3.W8-9: Implement a Rectangle Class


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode
# Write an area method that takes the heigh and with and multiplies them to return the area
# Write a perimeter method that takes height * 2 + width *2 = perimeter 
# Write a diagonal method that uses the Math.hypot(height, width) = diagonal
# Write a square method that checks if hegiht = width then return true 




# 3. Initial Solution
class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end
  
  def area
    return @width*@height
  end
  
  def perimeter
    return @width*2+@height*2
  end
  
  def diagonal
    Math.hypot(@width,@height)
  end
  
  def square?
    @width == @height
  end
  
  def ==(other)
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end
end




# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

rectangle = Rectangle.new(3,4)

p rectangle.perimeter == 14
p rectangle.diagonal == 5.0
p rectangle.square? == false

def assert 
    if yield
        puts "P :)"
    else
        puts "F :("
    end
end

assert {rectangle.area == 12}
assert {Rectangle.instance_method(:square?).arity == 0}
assert {Rectangle.instance_method(:diagonal).arity == 0}
assert {Rectangle.instance_method(:area).arity == 0}
assert {Rectangle.instance_method(:perimeter).arity == 0}
# 5. Reflection 
