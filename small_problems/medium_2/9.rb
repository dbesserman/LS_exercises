def bubble_sort!(array)
  loop do 
    swapped = false

    0.upto(array.size - 2) do |pointer|
      if array[pointer] > array[pointer + 1]
        array[pointer], array[pointer + 1] = array[pointer + 1], array[pointer]
        swapped = true
      end
    end

    break unless swapped
  end
end

array = [5, 3]
bubble_sort!(array)
puts array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
puts array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
puts array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
