# Create a function named divisors that takes an integer and returns an array with
# all of the integer's divisors(except for 1 and the number itself). If the number
# is prime return the string '(integer) is prime' (use Either String a in Haskell)

# Example:
# divisors(12); #should return [2,3,4,6]
# divisors(25); #should return [5]
# divisors(13); #should return "13 is prime"
# You can assume that you will only get positive integers as inputs.


def divisors(n)
  vals = (2..n/2).select{|x| n%x==0}
  vals.empty? ? "#{n} is prime" : vals
end


# Another Solution that factors in large numbers which wasn't being tested for in orginal Kata
require 'prime'

def divisors(n)
  return "#{n} is prime" if n.prime?

  # prime_division returns an array of the prime factors and their counts.
  # We flatten that into a full list of prime factors repeated
  #
  # For instance if we get n = 24
  #    24.prime_division  # => [ [2,3], [3,1]
  #
  #    since 2 is a factor 3 times, and 3 only once
  #
  # Then prime_factors would be: [2,2,2,3]
  prime_factors = n.prime_division.flat_map { |prime, count| [prime] * count }

  # We'll take combination of prime factor lengths from 1 to the number
  # of prime factors but not ALL prime factors, as that would give us n
  (1...prime_factors.length).
    # Get a list of ALL combination of factors of all lengths
    flat_map { |length| prime_factors.combination(length).to_a }.
    # Multiply them all together
    map { |factors| factors.inject(1, :*) }.
    # Get a sorted uniq list
    uniq.
    sort
end
