=begin
(i) Can hash values be arrays? 
(ii) Can you have an array of hashes? (give examples)

(i) Yes! 
(ii) Yes!
See below for examples.
=end

arr1 = [1,2]
arr2 = [2,3]
arr3 = [3,4]
arr4 = [4,5]

#two hashes where the values are arrays
hash1 = {first: arr1, second: arr2}
puts hash1
hash2 = {third: arr3, fourth: arr4}
puts hash2

#creating an array out of those two hashes
arr_of_hashes = [hash1, hash2]
puts "#{arr_of_hashes}"




