def fizzbuzz(start_int, end_int)
  result = []

  start_int.upto(end_int).each do |int|
    if (int % 3 == 0) && (int % 5 == 0) 
      result << 'FizzBuzz'
    elsif (int % 3 == 0)
      result << 'Fizz'
    elsif (int % 5 == 0)
      result << 'Buzz'
    else
      result << int
    end
  end

  print result.join(', ')
end

fizzbuzz(1, 15)
