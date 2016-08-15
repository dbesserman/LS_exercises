CORRESPONDANCE_HASH = { 0 => '0',
                        1 => '1',
                        2 => '2',
                        3 => '3',
                        4 => '4',
                        5 => '5',
                        6 => '6',
                        7 => '7',
                        8 => '8',
                        9 => '9' }


def integer_to_string(int)
  digits = []

  loop do
    break if int == 0
    remainder = int % 10
    digits.unshift(remainder)
    int /= 10
  end
  
  digits << 0 if digits.empty?

  digits.map { |d| CORRESPONDANCE_HASH[d] }.join
end

def signed_integer_to_string(int)
  if int > 0 
    '+' + integer_to_string(int)
  elsif int < 0
    '-' + integer_to_string(int.magnitude)
  else
    integer_to_string(int) 
  end
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
