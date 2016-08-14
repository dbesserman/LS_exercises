require 'pry'

# def block_word?(str)
#   blocks = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'],
#             ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'],
#             ['V', 'I'], ['L', 'Y'], ['Z', 'M']]
#   answer = true

#   str.chars.each do |char|
#     if blocks.any? { |block| block.include?(char) }
#       blocks.delete_if { |block| block.include?(char) }  
#     else
#       answer = false
#     end
#   end

#   answer
# end

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)

def block_word?(str)
  BLOCKS.none? { |block| string.count(block) >= 2 } 
end

puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
