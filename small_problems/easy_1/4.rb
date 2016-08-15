def count_occurrences(array)
  result = {}

  array.uniq.each do |element|
    result[element] = array.count(element)
  end

  result.each { |element, count| puts "#{element} => #{count}" }
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)
