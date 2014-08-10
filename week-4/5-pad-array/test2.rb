class Array
  def pad(min_size, pad_value=nil)
    return_array = self.clone
    if self.length >= min_size
      return return_array
    else
      size_diff = min_size - self.length
      for i in 1..size_diff
        return_array << pad_value
      end
      return return_array
    end
  end
  
  def pad! (min_size, pad_value=nil)
    if self.length >= min_size
      return self
    else
      size_diff = min_size - self.length
      for i in 1..size_diff
        self << pad_value
      end
      return self
    end
  end
  
end


  x = [1,2,3]
  p x.pad(0)
  p x.pad(20)
  p x.pad(5, "fuck")

  p x.pad!(0)
  p x.pad!(10)

  p x.pad!(50, "what the fuck ")