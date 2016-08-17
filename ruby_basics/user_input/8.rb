number_of_lines = nil
quit = false

loop do
  loop do
    puts '>> How many output lines do you want? Enter a number >= 3 (Q to quit):'
    answer = gets.chomp

    if answer.downcase == 'q'
      quit = true
    else
      number_of_lines = answer.to_i
    end
    
    break if quit || number_of_lines >= 3 
    puts ">> That's not enough lines."
  end

  break if quit

  while number_of_lines > 0
    puts 'Launch School is the best!'
    number_of_lines -= 1
  end
end
