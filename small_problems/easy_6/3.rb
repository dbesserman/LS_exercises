def find_fibonacci_index_by_length(length)
  series = [1, 1]
  loop do
    series << series[-1] + series[-2]
    break if num_digits(series.last) == length
  end

  series.count
end

def num_digits(int)
  int.to_s.length
end

binding.pry
puts find_fibonacci_index_by_length(2) == 7
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847
