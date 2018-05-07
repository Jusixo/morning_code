# Create a function that takes a Roman numeral as its argument and returns its value as a numeric decimal integer.
# You don't need to validate the form of the Roman numeral.

# Modern Roman numerals are written by expressing each decimal digit of the number to be encoded separately,
# starting with the leftmost digit and skipping any 0s. So 1990 is rendered "MCMXC" (1000 = M, 900 = CM, 90 = XC) and
# 2008 is rendered "MMVIII" (2000 = MM, 8 = VIII). The Roman numeral for 1666, "MDCLXVI",
# uses each letter in descending order.

ROMAN_CONVERSION = {
 "CM" => "900 ",
 "M" => "1000 ",

 "CD" => "400 ",
 "D" => "500 ",

 "XC" => "90 ",
 "C" => "100 ",

 "XL" => "40 ",
 "L" => "50 ",

 "IV" => "4 ",
 "V" => "5 ",

 "IX" => "9 ",
 "X" => "10 ",

 "I" => "1 ",
}
ROMAN_CONVERSION_PATTERN = Regexp.new(ROMAN_CONVERSION.keys.join("|"))

def solution(roman)
 roman.gsub(ROMAN_CONVERSION_PATTERN, ROMAN_CONVERSION).
       split.
       map(&:to_i).
       sum
end
