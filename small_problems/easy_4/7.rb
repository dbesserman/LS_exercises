CORRESPONDANCE_HASH = { '0' => 0,
                        '1' => 1,
                        '2' => 2,
                        '3' => 3,
                        '4' => 4,
                        '5' => 5,
                        '6' => 6,
                        '7' => 7,
                        '8' => 8,
                        '9' => 9 }

def string_to_integer(string)
  integer = 0
  reverse_str = string.reverse

  reverse_str.each_char.with_index do |c, i|
    integer += CORRESPONDANCE_HASH[c] * ( 10 ** i )
  end

  integer
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
