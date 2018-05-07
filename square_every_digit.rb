# your goal here is precisely the same (to square every digit in the given number),
# in 48 or fewer characters in Ruby

# (Note: in Ruby, spaces do not count towards your total-- within reason.
# Spacing shouldn't be more than 30% of your total to avoid possible cheats).

# Your return value should be in integer format.

# Your input will always be a valid, non-negative integer... no tricks!

# Bonus: Can you get it down to 34 characters? (43 in Ruby!)


def s(n)
  n.digits.reverse.map{|d|d*d}.join.to_i
end
