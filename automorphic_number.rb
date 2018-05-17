# Definition
# A number is called Automorphic number if and only if its square ends in the same digits as the number itself.

# Task
# Given a number determine if it Automorphic or not .

# Notes
# The number passed to the function is positive

# Single-digit numbers are considered Automorphic number.




def automorphic(n)
  # convert to string in order to iterate
  str = n.to_s
  sq = (n**2).to_s
  # loop thru the input
  idx = 0
  while idx < str.length
    # check if last elements are not equal
    if str[-(idx+1)] != sq[-(idx+1)]
      return 'Not!!'
    end
    idx += 1
  end
  return "Automorphic"
end

#refactored one liner

def automorphic(n)
  n.to_s == (n**2).to_s[(0-n.to_s.size)..-1] ? "Automorphic" : "Not!!"
end
