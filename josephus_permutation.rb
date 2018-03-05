# You are now to create a function that returns a Josephus permutation, taking as parameters the initial array/list of items to be permuted as if they were in a circle and counted out every k places until none remained.
#
# Tips and notes: it helps to start counting from 1 up to n, instead of the usual range 0..n-1; k will always be >=1.
#
# For example, with n=7 and k=3 josephus(7,3) should act this way.

# [1,2,3,4,5,6,7] - initial sequence
# [1,2,4,5,6,7] => 3 is counted out and goes into the result [3]
# [1,2,4,5,7] => 6 is counted out and goes into the result [3,6]
# [1,4,5,7] => 2 is counted out and goes into the result [3,6,2]
# [1,4,5] => 7 is counted out and goes into the result [3,6,2,7]
# [1,4] => 5 is counted out and goes into the result [3,6,2,7,5]
# [4] => 1 is counted out and goes into the result [3,6,2,7,5,1]
# [] => 4 is counted out and goes into the result [3,6,2,7,5,1,4]


def josephus(items,k)
  result = []
  count = k
    until items.length == 0 do
      remove_these = []
      items.each_with_index do |item, i|
        if count == 1
          result << items[i]
          remove_these << i
        end
        count = count == 1 ? k : count -= 1
      end
      remove_these.reverse!
      remove_these.each do |r|
        items.delete_at(r)
      end
    end
  result
end
