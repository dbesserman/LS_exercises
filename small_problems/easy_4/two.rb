def century(year)
  to_century(century_number(year))
end

def century_number(year)
  year = ((year - 1) / 100) + 1
end

def to_century(number)
  number = number.to_s
  case number
  when /11$/, /12$/, /13$/ then number << 'th'
  when /1$/ then number << 'st'
  when /2$/ then number << 'nd'
  when /3$/ then number << 'rd'
  else number << 'th'
  end
end

# puts century(2000) == '20th'
# puts century(2001) == '21st'
# puts century(1965) == '20th'
# puts century(256) == '3rd'
# puts century(5) == '1st'
# puts century(10103) == '102nd'
# puts century(1052) == '11th'
# puts century(1127) == '12th'
# puts century(11201) == '113th'
