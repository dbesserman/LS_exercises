require 'pry'

def stars(n)
  lines = ['*' * n] 

  0.upto(n / 2 - 1) do |i|
    line = center('*' + (' ' * i) + '*' + (' ' * i) + '*', n)
    lines << line
    lines.unshift(line)
  end

  puts lines
end

def center(str, size)
  (' ' * ((size - str.length) / 2)) + str
end


stars(21)
