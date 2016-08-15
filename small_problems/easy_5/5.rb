require 'pry'

def cleanup(str)
  str.gsub(/[^a-z]+/i, ' ') 
end

puts cleanup("---what's my +*& line?") == ' what s my line '
