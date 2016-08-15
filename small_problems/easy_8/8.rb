def double_consonants(string)
  chars = string.chars
  result = []
  chars.each do |char|
    if char =~ /[qwrtypsdfghjklzxcvbnm]/i
      2.times { |_| result << char }
    else 
      result << char
    end
  end
  
  result.join
end

puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""
