def asked_number(index)
  answer = nil
  case index
  when 1 then index = index.to_s + 'st'
  when 2 then index = index.to_s + 'nd'
  when 3 then index = index.to_s + 'rd'
  else index = index.to_s + 'th'
  end

  print "Please enter the #{index} integer: "
  loop do
    answer = gets.chomp
    break if (answer =~ /^\d*$/) && (answer.to_i > 0)
    print 'This is not a valid integer, please try again: '
  end

  answer.to_i
end

numbers = []
6.times { |i| numbers << asked_number(i + 1) }
last_number = numbers.pop

appear_message     =  "The number #{last_number} appears in #{numbers}."
not_appear_message =  "The number #{last_number} does not appear in #{numbers}."

numbers.include?(last_number) ? puts(appear_message) : puts(not_appear_message)
