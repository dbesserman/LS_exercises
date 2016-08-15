require 'pry'

def word_sizes(str)
  word_sizes = {}
  words = str.split
  words.each do |word|
    reduced_word = word.gsub(/[^a-z]+/i, '')
    reduced_word_size = reduced_word.size
    if word_sizes.keys.include?(reduced_word_size)
      word_sizes[reduced_word_size] += 1
    else
      word_sizes[reduced_word_size] = 1
    end
  end

  word_sizes
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}
