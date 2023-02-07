arr = [["test", "hello", "world"],["example", "mem"]]
#want to return the word "example"
#arr[1] will return ["example", "mem"] -- not what we want!
#so I can either do that, then delete the mem or I can use a second index to 
#specify that I want the second member of the second member of arr.
#let's do both
#DELETE THE MEM
arr.last.delete(arr.last.last)
puts "Here's one solution: " + arr.last.last

#SPECIFY THE INDEX
#First, I mutated arr, so let's remake it
arr = [["test", "hello", "world"],["example", "mem"]]
puts "Here's another solution: " + arr[1][0]
#I can also do that with the .last and .first methods (though, this solution
#is less robust since this wouldn't work to grab the "hello" member -- it being
#neither the last nor first member of arr[0])
puts "Here's a third sollution: " + arr.last.first