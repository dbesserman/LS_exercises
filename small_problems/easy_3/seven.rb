def oddities(array)
  new_array = []
  array.each_with_index { |v, i| new_array.push(v) if i.even? }
  new_array
end
