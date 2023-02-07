x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

#Question: What's the diff between the two hashes just created?

#Ans: my_hash actually assigns the SYMBOL 'x' as a key to the str value, "some value".
#my_hash2 assigns the string "hi there" (which is what the VARIABLE x is pointing to)
#to the str value, "some value".