def fibonacci(n)
  suite = [nil, 1, 1]
  (n - 2).times { |_| suite << suite[-1] + suite[-2] } if n >= 2
  suite[n]
end

puts fibonacci(20) == 6765
puts fibonacci(100) == 354224848179261915075
puts fibonacci(100_001) # => 4202692702.....8285979669707537501
