def ask_name
  answer = nil
  print 'What is your name ? '
  loop do
    answer = gets.chomp
    break unless answer.empty?
    print "Your name can't be blank, please try again:"
  end
  answer
end

name = ask_name
if name =~ /!$/ 
  name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING ?"
else 
  puts "Hello #{name}."
end
