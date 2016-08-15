def swapcase(str)
  str.chars.map { |char| swap(char) }.join
end

def swap(char)
  if char =~ /[a-z]/
    char.upcase
  elsif char =~ /[A-Z]/
    char.downcase
  else
    char
  end
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
