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

def has_sign?(string)
  string =~ /\A(\+|-)/
end

def string_to_signed_integer(string)
  sign = string.slice!(0) if has_sign?(string) 
  integer = 0
  reverse_str = string.reverse

  reverse_str.each_char.with_index do |c, i|
    integer += CORRESPONDANCE_HASH[c] * ( 10 ** i )
  end

  integer *= - 1 if sign == '-'

  integer
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
