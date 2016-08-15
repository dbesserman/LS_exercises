def swap(str)
  str.split.map { |word| swap_word(word) }.join(' ')
end

# def swap_word(word)
#   last_index = word.size - 1
#   first_char = word[0]
#   last_char = word[last_index]

#   word[0] = last_char
#   word[last_index] = first_char

#   word
# end

def swap_word(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
