# Coding: Parameters and return of function "movingShift"
# param s: a string to be coded
#
# param shift: an integer giving the initial shift
#
# The function "movingShift" first codes the entire string and then returns an array of strings containing the coded string in 5 parts (five parts because, to avoid more risks, the coded message will be given to five runners, one piece for each runner).
#
# If possible the message will be equally divided by message length between the five runners. If this is not possible, parts 1 to 5 will have subsequently non-increasing lengths, such that parts 1 to 4 are at least as long as when evenly divided, but at most 1 longer. If the last part is the empty string this empty string must be shown in the resulting array.
#
# For example, if the coded message has a length of 17 the five parts will have lengths of 4, 4, 4, 4, 1. The parts 1, 2, 3, 4 are evenly split and the last part of length 1 is shorter. If the length is 16 the parts will be of lengths 4, 4, 4, 4, 0. Parts 1, 2, 3, 4 are evenly split and the fifth runner will stay at home since his part is the empty string. If the length is 11, equal parts would be of length 2.2, hence parts will be of lengths 3, 3, 3, 2, 0.
#
# You will also implement a "demovingShift" function with two parameters
#
# Decoding: parameters and return of function "demovingShift"
# 1) an array of strings: s (possibly resulting from "movingShift", with 5 strings)
#
# 2) an int shift
#
# "demovingShift" returns a string.
#
#


# Solution:

def movingShift(s, shift)
res = ''
  s.chars.each do |x|
    ord = x.ord
    if x.ord > 64 && x.ord < 91
      ord = ((ord - 65 + shift) % 26) + 65
    else
      if x.ord > 96 && x.ord < 123
        ord = ((ord - 97 + shift) % 26) + 97
      end
    end
    shift+=1
    res += ord.chr
  end
  l = (res.length/5.0).ceil
puts l
puts res
  [res[0..l-1], res[l..2*len-1],res[2*l..3*l-1],res[3*l..4*len-1],res[4*l..-1]]
end


def demovingShift(arr, shift)
  s = arr.join
  res = ''
  s.chars.each do |x|
    ord = x.ord
    if x.ord > 64 && x.ord < 91
      ord = ((ord - 65 - shift) % 26) + 65
    else
      if x.ord > 96 && x.ord < 123
        ord = ((ord - 97 - shift) % 26) + 97
      end
    end
    shift+=1
    res += ord.chr
  end
  res
end
