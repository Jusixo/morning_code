# In this kata, you must create a digital root function.
#
# A digital root is the recursive sum of all the digits in a number. Given n, take the sum of the digits of n.
# If that value has two digits, continue reducing in this way until a single-digit number is produced.
# This is only applicable to the natural numbers.


# My Solution

def digital_root(n)
  num = 0
  n.to_s.split("").each {|x| num += x.to_i}
  num.to_i > 9 ? digital_root(num.to_i) : num.to_i
end

# Better solution
