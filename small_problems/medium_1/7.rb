require 'pry'

def words_to_digit(str)
  word_to_digit_hash = {
    one: '1',
    two: '2',
    three: '3',
    four: '4',
    five: '5',
    six: '6',
    seven: '7',
    eight: '8',
    nine: '9'
  }
  
  word_to_digit_hash.keys.each { |number| str = str.gsub(number.to_s, word_to_digit_hash[number]) }

  str
end

puts words_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
