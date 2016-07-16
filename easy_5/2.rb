require 'pry'

def time_of_day(int)
  sign = nil
  int >= 0 ? sign = 'positive' : sign = 'negative'
  int *= -1 if sign == 'negative'

  hour = int / 60 
  minutes = int % 60

  loop do
    break if hour < 24
    hour -= 24
  end

  case sign
  when 'positive' then "#{hours}:#{minutes}"
  end
end
puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
