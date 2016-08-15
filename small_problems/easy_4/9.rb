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

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
