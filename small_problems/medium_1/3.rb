require 'pry'

def max_rotation(number)
  i = number.to_s.length

  loop do
    number = rotate_rightmost_digits(number, i)
    i -= 1
    break if i == 0
  end

  number
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

def rotate_array(array)
  new_array = array.clone
  new_array << new_array.shift
end

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845
