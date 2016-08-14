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

def palindrome?(string)
  (string == string.reverse) && (string.size > 1)
end

def palindromes(string)
  substrings(string).keep_if { |substring| palindrome?(substring) }
end


puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
    'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
      'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
        '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
    'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
