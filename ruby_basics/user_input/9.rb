def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def zero?(str)
  str.chars.uniq == ['0']
end

def output(message)
  puts ">> #{message}"
end

numbers = []

loop do
  2.times do
    number_str = nil

    loop do
      output 'Please enter a positive or negative integer:'
      number_str = gets.chomp

      if valid_number?(number_str) && !zero?(number_str)
        break
      else
        output 'Invalid input. Only non-zero integers are allowed.'
      end
    end

    numbers << number_str.to_i
  end

  break if ( numbers.any? { |x| x > 0 } ) && ( numbers.any? { |x| x < 0 } )
  output 'Sorry. One integer must be positive, one must be negative.'
  output 'Please start over.'
end

numbers.sort!

output "#{numbers[0]} + #{numbers[1]} = #{numbers[0] + numbers[1]}"
