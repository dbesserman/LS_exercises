require 'pry'

def staggered_case(str)
  transform_to_upcase = true
  chars = str.chars.map do |char| 
    new_char = nil
    if char =~ /[a-zA-Z]/
      new_char = transform_to_upcase ? char.upcase : char.downcase 
      transform_to_upcase = !transform_to_upcase
    end

    new_char || char
  end

  chars.join
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
