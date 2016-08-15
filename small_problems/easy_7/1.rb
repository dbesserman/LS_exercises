def interleave(array_1, array_2)
  i = 0
  new_array = []

  loop do
    new_array << array_1[i]
    new_array << array_2[i]
    i += 1
    break if i == array_1.size
  end

  new_array
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
