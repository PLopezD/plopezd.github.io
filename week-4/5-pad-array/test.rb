
class Array
  def pad(min, string=nil)
    rarray = self.clone
    if self.size >= min
      return rarray
    else
      difference = min - self.size
      for x in 1..difference
        rarray.push(string)
      end 
      return rarray
    end
  end

  def pad!(min, string = nil)
    if self.size > min
      return self
    else
      difference  = min - self.size 
      for x in  1..difference
        self.push(string)
       
          end
          return self
        end 
      end
end




  x = [1,2,3]
  p x.pad(0)
  p x.pad(15)
  p x.pad(15, "fuck")

  p x.pad!(0)
  p x.pad!(10)

  p x.pad!(50, "what the fuck ")