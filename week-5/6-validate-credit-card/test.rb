cardnumber = 4408041234567891


class CreditCard
  def initialize(cardnumber)
    @cardnumber = cardnumber

    num = @cardnumber.to_s
    @cardarray = []
    @cardarray = num.split(//).map{|i| i.to_i}
    
    if @cardarray.length != 16 
      raise ArgumentError.new"Number must be 16 digits long"
    end
  end 
  
 def check_card
  @newarray = []
  @newarray = @cardarray.each_with_index {|number, n| @cardarray[n] *= 2 if n.even? }
   
  @sumarray = []
  @sumarray = @newarray.join("").split("").map{|i| i.to_i}
  sum = 0
  @sumarray.each {|add| sum += add }
  
   if 
    sum.to_i % 10 == 0
    true
  else 
    false
  end  
 end
   end