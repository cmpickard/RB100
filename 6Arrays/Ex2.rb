1. arr = ["b", "a"]
   arr = arr.product(Array(1..3))
   arr.first.delete(arr.first.last)
#the .product call creates a new array with three items: {1,2,3}
#so the second line will produce the following product array, called arr:
#[["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
#the third line calls the delete method on the first element of arr
#that works b/c the first element of arr is itself an array
#the delete method requires an argument, an element of the array that is to be
#deleted. the element we name is the last element in the first element of arr
#the first element of arr is ["b", 1] so the last element of that (the 1) is
#deleted. The delete method mutates the caller, so the return value is arr, 
#post-deletion. [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

2. arr = ["b", "a"]
   arr = arr.product([Array(1..3)])
   arr.first.delete(arr.first.last)
#the .product call again creates a new array, however this time, the brackets
#actually constitute the array, and we're then populating that array with another
# array (which we're making by calling the Array method) consisting of [1,2,3]
#Thus, the array we're creating is [[1,2,3]] -- an array with one element, another
#array
#THEN, we're multiplying that new array by arr. The result is:
#arr = [["b", [1,2,3]], ["a", [1,2,3]]]
#the last line does the same thing as before: it deletes the last member of the
#first item in the arr array. 
#the return value is the mutated arr: [["b"], ["a", [1,2,3]]]