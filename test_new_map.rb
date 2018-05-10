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
    # ...
  end
end
