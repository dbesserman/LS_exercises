def ask_number
  answer = nil

  print "Please enter a integer: "
  loop do
    answer = gets.chomp
    break if (answer =~ /^\d*$/)
    print 'This is not a valid integer, please try again: '
  end

  answer.to_i
end

num1 = ask_number
num2 = ask_number

puts "#{num1} + #{num2} = #{num1 + num2}"
puts "#{num1} - #{num2} = #{num1 - num2}"
puts "#{num1} * #{num2} = #{num1 * num2}"
puts "#{num1} / #{num2} = #{num1 / num2}"
puts "#{num1} % #{num2} = #{num1 % num2}"
puts "#{num1} ** #{num2} = #{num1 ** num2}"
