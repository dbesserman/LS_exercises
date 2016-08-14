require 'pry'

def buy_fruit(fruits_list)
  new_list = []

  fruits_list.each do |fruit_data|
    fruit_data[1].times { |_| new_list << fruit_data[0] } 
  end

  new_list
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) == ["apples", "apples", "apples", "orange", "bananas","bananas"]
