If letter = 'r':
comes_after("are you really learning Ruby?") # => "eenu"
comes_after("Katy Perry is on the radio!")   # => "rya"
comes_after("Pirates say arrrrrrrrr.")       # => "arrrrrrrr"
comes_after("r8 your friend")                # => "i"


#return the alphabetic character after every instance of letter(case insensitive).
#if there is a number, punctuation or underscore following the letter, it should not be returned.
#return an empty string if there are no instances of letter in the given string.




def comes_after(str,letter)
  alpha = ('a'..'z').to_a + ('A'..'Z').to_a
  result = []
  str.chars.map.with_index do |v,i|
    if v.downcase == letter.downcase
      result << str[i+1]
    end
  end
    result.select {|k| alpha.include?(k)}.join
end
