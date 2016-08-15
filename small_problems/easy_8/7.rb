def repeater(string)
  chars = string.chars
  doubled_chars = []
  chars.each do |char|
    2.times { |_| doubled_chars << char }
  end
  
  doubled_chars.join
end
 
puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''
