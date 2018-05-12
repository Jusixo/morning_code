class Array
  # new_map recieves a block as f, iterates through self as n, and returns an array of f(n) results as [f(n)]
  #
  # Function Signature: new_map(f) [f(n)]
  #
  # Test Example:
  #   r = [1,2,3,4,5,6].new_map {|i| i if i % 2 == 0}
  #   e = [2,4,6]
  #   expect(r).to eq(e)

  def new_map(&f)
    #take block and iterate through self as n and return result
    result = []
    self.each do |n|
      e << block.call(n)
    end
  end
end

#fixed

def new_map(&f)
  # Iterate through self as n calling f(n) adding the returned value to result and returning result when finished
  result = []
  self.each do |n|
    result << f.call(n)
  end
   result.compact
end

#refactored

  def new_map(&f)
    # Iterate through self as n calling f(n) adding the returned value to result and returning result when finished
    result = []
    self.each do |n|
      i = f.call(n)
      result << i if i
    end
    result
  end
