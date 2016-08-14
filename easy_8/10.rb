def center_of(str)
  size = str.size
  size.even? ? str.slice((size / 2 - 1), 2) : str.slice(size / 2)
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
