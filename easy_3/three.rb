def ask_words
  answer = nil

  print "Please enter one onre many words: "
  loop do
    answer = gets.chomp
    break unless answer.empty?
    print 'You must enter a word: '
  end

  answer
end

words = ask_words
puts "There are #{words.chars.select { |char| char != ' ' }.count} charachters in '#{words}'."
