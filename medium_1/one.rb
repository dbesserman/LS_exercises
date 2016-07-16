require 'pry'
def rotate_array(array)
  new_array = array.select { |_| true }
  new_array << new_array.shift
end

x = [1, 2, 3, 4]
puts rotate_array(x) == [2, 3, 4, 1]   # => true
puts x == [1, 2, 3, 4]   
