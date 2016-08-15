def show_multiplicative_average(array_of_ints)
  average = ( array_of_ints.inject(:*).to_f / array_of_ints.count )
  puts "The result is #{format('%.3f', average)}"
end

show_multiplicative_average([3, 5])
# The result is 7.500

show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667
