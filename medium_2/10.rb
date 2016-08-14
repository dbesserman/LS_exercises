def sum_square_difference(n)
  ( 1.upto(n).inject(:+) ** 2 ) - 1.upto(n).map { |i| i ** 2 }.inject(:+)
end

puts sum_square_difference(3) == 22
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150
