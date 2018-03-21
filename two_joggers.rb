# Your job is to complete the function nbrOfLaps(x, y) that, given the length of the laps for Bob and Charles
# finds the number of laps that each jogger has to complete before they meet each other again, at the same time, at the start.
#
# The function takes two arguments:
#
# The length of Bob's lap (larger than 0)
# The length of Charles' lap (larger than 0)
#


# x mile: length of bob's lap
# y mile length of Charles' lap
#  finds the number of laps that each jogger has to complete before they meet each other again
# find the first common multiplication number of each digit
# compare x,y select smaller number of the two
# multiply smaller number until it is dividable by the larger number and the remainder is 0


def nbr_of_laps(x, y)
  i = x.lcm(y)
  x = i/x
  y = i/y
  laps = [x, y]
end

# ^ solution was bad because i redefined arguments passed to a method.

*better solution*

def nbr_of_laps(x, y)
  lcm = x.lcm(y)
  [lcm/x, lcm/y]
end
