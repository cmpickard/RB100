#QUESTION: Look at Ruby's merge method. Notice that it has two versions. 
#What is the difference between merge and merge!   ? 
#Write a program that uses both and illustrate the differences

hash1 = {key1: "val1", key2: "val2", key3: "val3"}
hash2 = {key4: "val4", key5: "val5"}

#First we use the .merge method. This returns a new hash and does not mutate
#either the hash it's called on or the hash we pass in as an argument.
#we'll assign the variable merge_hash to that return value
merge_hash = hash1.merge(hash2)

#Now we use the .merge! method. This method mutates the caller, so since we're
#calling it on hash1 and passing in hash2, hash1 will be replaced with a merged
#hash. (one that's identical to merge_has.)
#since we're only *passing in* hash2 as an argument, it will not be mutated.
hash1.merge!(hash2)

puts "This is the new hash that results from using merge, #{merge_hash}."
puts "This is the mutated hash that results from using merge!, #{hash1}."