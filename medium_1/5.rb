require 'pry'

SIGN = '*'

def diamond(n)
  signs_per_line = []
  i = 1

  n.times do |y|
    signs_per_line << i
    y < (n/2) ? i += 2 : i -= 2
  end

  display_diamond(signs_per_line, n)
end

def display_diamond(signs_per_line, n)
  signs_per_line.each do |nb_of_signs|
    blank_spaces = " " * ((n - nb_of_signs).abs / 2)
    puts "#{blank_spaces}#{SIGN * nb_of_signs}#{blank_spaces}"
  end
end

diamond(1)
diamond(3)
diamond(9)
