require 'pry'

def letter_percentages(str)
  result = {}
  chars = str.chars
  str_length = str.length

  lowercase_count = chars.count { |char| char =~ /[a-z]/ }
  uppercase_count = chars.count { |char| char =~ /[A-Z]/ }

  result[:lowercase] = ( lowercase_count.to_f / str_length ) * 100
  result[:uppercase] = ( uppercase_count.to_f / str_length ) * 100
  result[:neither] = 100 - result[:lowercase] - result[:uppercase]

  result
end

# def letter_percentages(string)
#   counts = { lowercase: 0, uppercase: 0, neither: 0 }
#   percentages = { lowercase: [], uppercase: [], neither: [] }
#   characters = string.chars
#   length = string.length

#   counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
#   counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
#   counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }

#   calculate(percentages, counts, length)

#   binding.pry
#   percentages
# end

def calculate(percentages, counts, length)
  percentages[:uppercase] = (counts[:uppercase] / length.to_f) * 100
  percentages[:lowercase] = (counts[:lowercase] / length.to_f) * 100
  percentages[:neither] = (counts[:neither] / length.to_f) * 100
end

puts letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
puts letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
