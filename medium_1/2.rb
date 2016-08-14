require 'pry'

# def rotate_rightmost_digits(number, n)
#   chars = number.to_s.chars
#   immobile_chars = chars.first(chars.size - n)
#   chars_to_rotate = chars.last(n)
#   (immobile_chars + rotate_array(chars_to_rotate)).join.to_i
# end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

def rotate_array(array)
  new_array = array.clone
  new_array << new_array.shift
end

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917
