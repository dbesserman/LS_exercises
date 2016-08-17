USERNAME = 'John'
PASSWORD = 'Rambo'
name_input = nil
password_input = nil

loop do
  puts '>> Please enter user name:'
  name_input = gets.chomp
  puts '>> Please enter your password:'
  password_input = gets.chomp

  break if ( name_input == USERNAME ) && ( password_input == PASSWORD )
  puts '>> Authorization failed!'
end

puts 'Welcome!'
