# You are given a string of words (x), for each word within the string you need to turn the word 'inside out'.
# By this I mean the internal letters will move out, and the external letters move toward the centre.
#
# If the word is even length, all letters will move. If the length is odd, you are expected to leave
# the 'middle' letter of the word where it is.


def inside_out_even(word)
  word.chars.each_slice(word.length/2).map(&:reverse).join
end

def inside_out_odd(word)
  word = word.dup
  middle = word.slice!(word.length/2)
  inside_out_word = word.empty? ? "" : inside_out_even(word)
  inside_out_word.insert(word.length/2, middle)
end

def inside_out s
  s.split(" ").map { |word| word.length.odd? ? inside_out_odd(word) : inside_out_even(word) }.join(" ")
end

#regular expressions

def inside_out(s)
  s.split(" ").map { |word| word.gsub(/(?<first>.{#{word.length/2}})(?<middle>.?)(?<second>.{#{word.length/2}})/) { [$~[:first].reverse, $~[:middle], $~[:second].reverse].join }}.join(" ")
end
