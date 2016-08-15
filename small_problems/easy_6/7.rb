require 'pry'

def halvsies(array)
  separation_index = nil # index of the last element of the first array
  separation_index = array.size.even? ? ( array.size / 2 )  - 1 : ( array.size / 2 )
  [ array.select.with_index { |_, i| i <= separation_index }, array.select.with_index { |_, i| i > separation_index } ]
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]
