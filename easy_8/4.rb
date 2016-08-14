require 'pry'

def substrings_at_start(str)
  returned_array = []
  chars = str.chars
  
  1.upto(chars.count) { |x| returned_array << chars.first(x) }
  returned_array.map { |grp_of_chr| grp_of_chr.join }
end

def str_with_first_char_removed(str)
  chars  = str.chars
  chars.shift
  chars.join
end

def substrings(str)
  returned_array = []

  loop do
    break if str.empty?
    returned_array << substrings_at_start(str)
    str = str_with_first_char_removed(str)
  end
  
  returned_array.flatten
end

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
