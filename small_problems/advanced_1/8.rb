require 'pry'

def bubble_sort!(array)
  loop do 
    swapped = false

    0.upto(array.size - 2) do |pointer|
      if array[pointer] > array[pointer + 1]
        array[pointer], array[pointer + 1] = array[pointer + 1], array[pointer]
        swapped = true
      end
    end

    break unless swapped
  end
end

def merge(array_1, array_2)
 new_array = [array_1, array_2].flatten
 bubble_sort!(new_array)
 new_array
end

puts merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
puts merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
puts merge([], [1, 4, 5]) == [1, 4, 5]
puts merge([1, 4, 5], []) == [1, 4, 5]

