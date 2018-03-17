# The main idea is to count all the occuring characters(UTF-8) in string.
# If you have string like this aba then the result should be { 'a': 2, 'b': 1 }

# What if the string is empty ? Then the result should be empty object literal { }

def count_chars(s)
    (s.chars.uniq.zip s.chars.uniq.map {|a| s.count(a)}).to_h
end
