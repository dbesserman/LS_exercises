def letter_case_count(string)
  counts              = {}
  array_of_chars     = string.chars
  counts[:lowercase] = array_of_chars.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = array_of_chars.count { |char| char =~ /[A-Z]/ }
  counts[:neither]   = array_of_chars.count { |char| char =~ /[^a-zA-Z]/ }

  counts
end

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
