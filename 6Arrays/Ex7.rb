#QUESTION: Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

arr = ["1", 2, :two, [3,4]]

arr.each_with_index do |v,i|
  puts "Index is #{i} " + "and the item at that index is #{v}."
end