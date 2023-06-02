DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(str)
  digits = str.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

def string_to_signed_integer(str)
  digits = string_to_integer(str.delete('^0-9'))
  str.include?('-') ? -digits : digits
end

p string_to_signed_integer('4321')
p string_to_signed_integer('-570')
p string_to_signed_integer('+100')
