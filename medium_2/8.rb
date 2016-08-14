require 'pry'

def featured(int)
  next_multiple = int + (7 - int % 7)

  loop do
    if next_multiple > 1_023_456_987
      puts 'Impossible'
      break
    elsif next_multiple.odd? && unique_numbers?(next_multiple)
      return next_multiple
    end

    next_multiple += 7
  end
end

def unique_numbers?(int)
  int_chars = int.to_s.chars
  int_chars.size == int_chars.uniq.size
end

puts featured(12) == 21
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) == 1_023_456_987

puts featured(9_999_999_999)
