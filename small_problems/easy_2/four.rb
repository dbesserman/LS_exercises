def ask_year(message)
  answer = nil

  print message + ' '
  loop do
    answer = gets.chomp
    break if answer =~ /^\d*$/
    print 'This is not a valid answer, please try again: '
  end

  answer.to_i
end

age = ask_year('How old are you ?')
retirement_age =  ask_year('At what age would you like to retire ?')
years_left = retirement_age - age
year_of_retirement = Time.now.year + years_left

puts "It's #{Time.now.year}. You will retire in #{year_of_retirement}."
puts "You have #{years_left} years left to work."
