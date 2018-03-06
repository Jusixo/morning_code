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

#better solution (faster)

def digital_root(n)
  until n < 10
    n = n.digits.sum
  end
  n
end

#ruby 2.4 solutions (codewars is slow to update langauges)

class Integer
  def digits
    to_s.chars.map(&:to_i)
  end
end
