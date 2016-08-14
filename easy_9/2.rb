require 'pry'

def twice(int)
  double?(int) ? int : (2 * int)
end

def double?(int)
  int_string = int.to_s 
  size = int_string.size
  half_size = size / 2
  size.even? && (int_string[0..half_size - 1] == int_string[half_size..-1])
end

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
