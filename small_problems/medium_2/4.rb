require 'pry'

def balanced?(str)
  answer = true
  relevant_chars = str.chars.keep_if { |char| char == '(' || char == ')' }
  count = 0
  relevant_chars.each do |char|
    char == '(' ? count += 1 : count -= 1
    
    if count < 0
      answer = false
      break
    end
  end

  answer = false if count != 0 

  answer
end

puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false
