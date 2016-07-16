def ascii_value(string)
  string.empty? ? 0 : string.chars.map { |char| char.ord }.inject(:+)
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0


# char.ord.chr == char
