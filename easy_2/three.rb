def ask_value(var_name, unit)
  answer = nil

  print "Please enter the #{var_name} in #{unit}: "
  loop do
    answer = gets.chomp
    break if answer =~ /^\d*$/
    binding.pry
    print 'This is not a valid answer, please try again: '
  end

  answer.to_i
end

bill_amount = ask_value('bill amount', 'dollars')
tip_rate = ask_value('tip', 'percent')

tip_rate = tip_rate.to_f / 100 
tip_amount = bill_amount * tip_rate
bill_amount = bill_amount + tip_amount

puts "The tip is #{tip_amount}."
puts "The total bill is #{bill_amount}."
