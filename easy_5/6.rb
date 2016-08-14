require 'pry'

def word_sizes(str)
  word_sizes = {}
  sizes = str.split.map(&:size)
  sizes.flatten.sort.each { |size| word_sizes[size] = sizes.count(size) }
  word_sizes
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}
