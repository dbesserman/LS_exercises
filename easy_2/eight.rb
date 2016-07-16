def ask_number
  answer = nil

  print "Please enter a positive integer: "
  loop do
    answer = gets.chomp
    break if (answer =~ /^\d*$/) && (answer.to_i > 0)
    print 'This is not a valid positive integer, please try again: '
  end

  answer.to_i
end

def ask_choice(valid_answers)
  answer = nil
  print 'Would you like to compute the sum or the product ? '
  loop do
    answer = gets.chomp.downcase
    break if valid_answers.include?(answer)
  end
  answer
end

result = nil
number = ask_number
choice = ask_choice(%w(sum product))

case choice
when 'sum'     then result = 1.upto(number).inject(:+)
when 'product' then result = 1.upto(number).inject(:*)
end

puts "The #{choice} of the integers between 1 and #{number} is #{result}."
