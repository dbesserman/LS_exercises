numbers = {
  high:   100,
  medium: 50,
  low:    10
}

half_numbers = numbers.values.map { |v| v / 2 }
p half_numbers
