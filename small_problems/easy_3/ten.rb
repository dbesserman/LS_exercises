def palindrome?(number)
  number.to_s == number.to_s.reverse ? true : false
end
