require 'pry'

def crunch(str)
  rendered_string = ''
  latest_char = ''
  str.each_char do |char|
    rendered_string << char unless char == latest_char 
    latest_char = char
  end

  rendered_string
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
