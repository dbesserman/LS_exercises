def stringy(n)
  1.upto(n).map { |i| i.even? ? 0 : 1 }.join 
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
