MINUTES_PER_HOURS = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOURS

require 'pry'
def after_midnight(time_string)
  hours, minutes = time_string.split(':').map(&:to_i)
  hours %= 24 if hours >= 24
  hours * 60 + minutes
end

# def before_midnight(time_string)
#   hours, minutes = time_string.split(':').map(&:to_i)
#   hours %= 24 if hours >= 24
#   total_minutes = 0

#   if minutes > 0
#     total_minutes += 60 - minutes
#     hours += 1
#     total_minutes += (24 - hours) * 60 
#   else
#     0
#   end
# end

def before_midnight(time_string)
  if (after_midnight(time_string) == 0)
    0
  else
    MINUTES_PER_DAY - after_midnight(time_string)
  end
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
