# U3.W8-9: Triangle Debugger


# I worked on this challenge [by myself, with: ].


# 1. Original Solution

# def valid_triangle?(a, b, c, sum)
#   if a != 0 || b != 0 || c != 0
#   if a >= b
#   largest = a
#   sum += b
#   else largest = b
#   sum += a
#   end
#   if c > largest
#   sum += largest
#   largest = c
#   else sum += c
#   end
#   if sum > largest
#   return "true"
#   else return "false"
#   end
#   else return "false"
#   end
# end


# 2. Answer the question for each bug

# --- Bug 1 ---
# * what is the exact description of the error?
# expect(method(:valid_triangle?).arity).to eq 3

# * what is the exact line number the error is appearing?
#9

# * before you fix the bug, what do you think is causing the error?
# There are 4 argument when there should be three


# --- Bug 2 ---
# * what is the exact description of the error?
#valid_triangle? returns false if any of the arguments are 0
# * what is the exact line number the error is appearing?
#20
# * before you fix the bug, what do you think is causing the error?
# A string is being returned rather than a boolean value


# --- Bug 3 ---
# * what is the exact description of the error?
# * what is the exact line number the error is appearing?
# * before you fix the bug, what do you think is causing the error?


# 3. Refactored Solution (Comment the other code to run this)

def valid_triangle?(a, b, c)
  sum = 0
  if a != 0 || b != 0 || c != 0
    if a >= b
      largest = a
      sum += b
    else largest = b
      sum += a
    end
    if c > largest
      sum += largest
      largest = c
    else sum += c
    end
    if sum > largest
      return true
    else return false
    end
  else return false
  end
end


# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
def assert 
  if yield 
      p ":) Pass"
  else
      p ":( Fail"
  end
end
assert{valid_triangle?(1,2,3) == false}
assert{valid_triangle?(4,3,5) == true}
assert{valid_triangle?(3,6,9) == false}
assert{valid_triangle?(8,6,10) == true}