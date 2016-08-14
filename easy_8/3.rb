def substrings_at_start(str)
  returned_array = []
  chars = str.chars
  
  1.upto(chars.count) { |x| returned_array << chars.first(x) }
  returned_array.map { |grp_of_chr| grp_of_chr.join }
end

puts substrings_at_start('abc') == ['a', 'ab', 'abc']
puts substrings_at_start('a') == ['a']
puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
