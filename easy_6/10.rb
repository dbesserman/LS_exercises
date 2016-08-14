require 'pry'

def triangle(n)
  occupied_squares = 1
  loop do
    puts (' ' * (n - occupied_squares)) + ('*' * occupied_squares)
    break if occupied_squares == n
    occupied_squares += 1
  end
end

binding.pry
