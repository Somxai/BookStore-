
def bubble_sort(num_arr)

  n = num_arr.size

 loop do

  for index in 0...n - 1

    next_index = index + 1

    if num_arr[index] > num_arr[next_index] then
      temp = num_arr[next_index]
      num_arr[next_index] = num_arr[index]
      num_arr[index] = temp
      swapped = true
    end
  end
  break unless swapped
end
 num_arr
end


p bubble_sort([4,3,78,2,0,2])
