# Complete the solution so that it reverses all of the words within the string passed in.


# test case
# describe "Solution" do
#   it "should test for something" do
#     Test.assert_equals("actual", "expected", "This is just an example of how you can write your own TDD tests")
#   end
# end


def solution(sentence)
  sentence.split.reverse.join(" ")
end
