https://www.codewars.com/kata/simple-pig-latin/train/ruby

  Solution:

  def pig_it text
    text.split(" ").map {|x| x =~ /[a-zA-Z]/ ? x = x[1..x.length] + x[0] + "ay" : x}.join(" ")
  end
