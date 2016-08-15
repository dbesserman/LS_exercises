require 'pry'

def ask_distance(var_name)
  answer = nil

  print "Please enter the #{var_name} in metters: "
  loop do
    answer = gets.chomp
    break if answer =~ /^\d*$/
    print 'This is not a valid answer, please try again: '
  end

  answer.to_i
end

def to_square_feet(area_in_metters)
  ( area_in_metters * 10.763 ).round(2)
end


width = ask_distance('width')
length = ask_distance('length')
area = width * length
puts "\nThe area of the room is #{area} metters (#{to_square_feet(area)} square feets)"
