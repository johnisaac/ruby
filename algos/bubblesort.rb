arr = [3,4,2,5,1]
  
number_of_iterations = 0
temp = nil

# outer loop should iterate over the input array
arr.each_index do|a|
  # inner loop should iterate over the input array minus the number of iterations
  0.upto( arr.length - number_of_iterations-1 ) do|current_index|
    # if the current_index value is greater than the current_index_plus_one value then, swap and make the current_index_plus_one as the current_index and proceed
    if current_index < arr.length - 1 and arr[current_index] > arr[current_index+1]
      temp = arr[current_index]
      arr[current_index] = arr[current_index+1]
      arr[current_index+1] = temp
    end
  end
  number_of_iterations = number_of_iterations + 1
end


puts arr.inspect