def num_checker(arr, num)
  return true if arr.include?(num)
  false
end

arr = [1, 3, 5, 7, 9, 11]
number = 12
puts num_checker(arr,number)