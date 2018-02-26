# Given an amount between 40 and 10000 dollars (inclusive) and assuming that the ATM wants to use as few bills as possible,
# determinate the minimal number of 100, 50 and 20 dollar bills the ATM needs to dispense (in that order).

# An array of number of 100, 50 and 20 dollar bills needed to complete the withdraw (in that order).

# check on fifties, if n isn't divisible by twenty and greater than fifty then fifties count is 1

# take n and figure out hundreds and twenties

def withdraw(n)
  fifty = 0
    if n % 20 != 0 && n > 50
      fifty = 1
      n = n - 50
    end
  [n / 100, fifty, n % 100 / 20]
end
