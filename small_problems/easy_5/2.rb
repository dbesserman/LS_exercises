# def time_of_day(int)
#   total_minutes = int.abs
#   hours = total_minutes / 60 
#   hours %= 24 if hours > 24
#   minutes = total_minutes % 60

#   int.positive? ? "#{hours}:#{minutes}" : 
# end

# def reverse_time(hours, minutes)
#   hour_base = 24
#   hour_base -= 1 unless minutes == 0
#   minute_base = 60 
# end

# SOLUTION:

MINUTES_PER_HOURS = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOURS

def time_of_day(delta_minutes)
  delta_minutes = delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOURS)
  format('%02d:%02d', hours, minutes)
end


puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
