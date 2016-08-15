def multiply_list(array_1, array_2)
  new_array = []

  array_1.each_index do |i|
    new_array << array_1[i] * array_2[i]
  end

  new_array
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
