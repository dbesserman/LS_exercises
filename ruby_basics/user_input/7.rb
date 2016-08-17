def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

def zero?(str)
  str.chars.uniq == ['0']
end

def output(message)
  puts ">> #{message}"
end

numerator = nil

loop do
  output 'Please enter the numerator:'
  numerator = gets.chomp
  break if valid_number?(numerator)
  output 'Invalid input. Only integers are allowed.'
end

denominator = nil

loop do
  output 'Please enter the denominator:'
  denominator = gets.chomp
  if valid_number?(denominator) && !zero?(denominator)
    break
  elsif zero?(denominator)
    output 'Invalid input. A denominator of 0 is not allowed.'
  else
    output 'Invalid input. Only integers are allowed.'
  end
end

output " #{numerator} / #{denominator} is #{numerator.to_i / denominator.to_i}"
