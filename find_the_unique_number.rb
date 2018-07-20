#find and return the single number in an array that contains duplicate numbers
#if the solution is too slow it'll fail


def find_unique(numbers)
  numbers.reduce(:^)
end
