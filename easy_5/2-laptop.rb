require 'pry'

def time_of_day(num)
  hours = num / 60
  hours %= 24 if hours > 24
  mins  = num % 60
  binding.pry
end

puts time_of_day(0) == "00:00"
# puts time_of_day(-3) == "23:57"
# puts time_of_day(35) == "00:35"
# puts time_of_day(-1437) == "00:03"
# puts time_of_day(3000) == "02:00"
# puts time_of_day(800) == "13:20"
# puts time_of_day(-4231) == "01:29"
