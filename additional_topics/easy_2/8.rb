def max_by(array)
  return nil if array.empty?

  max_value = nil
  recoreded_index = nil

  array.each_with_index do |item, index|
    yielded_value = yield(item)

    if (yielded_value && !max_value) || (yielded_value > max_value)
      max_value = yielded_value 
      recoreded_index = index
    end
  end

  array[recoreded_index]
end

puts max_by([1, 5, 3]) { |value| value + 2 } == 5
puts max_by([1, 5, 3]) { |value| 9 - value } == 1
puts max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
puts max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
puts max_by([-7]) { |value| value * 3 } == -7
puts max_by([]) { |value| value + 5 } == nil
