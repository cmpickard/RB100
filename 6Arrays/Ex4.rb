arr = [15, 7, 18, 5, 12, 8, 5, 1]

arr.index(5)
#this will return the index of the specified value but it STOP SEARCHING once it find it
#so, in this case, it will find a '5' as the 4th member of the array and so will return
#its index, which is 3. The integer 3 will be returned.

puts arr.index[5]
#this may throw an error? The index function expects an argument, and the square brackets
#aren't the right syntax for passing an argument.
#RESULT: it's ok not to pass an argument to .index, that just returns an Enumerator
#(i don't understand what this is, some kind of object.) But then, the '[5]' is interpreted
#as the name of a method that's being called on the Enumerator. The Enumerator class doesn't
#have a method by that name, so it DOES throw an error: the "undefined method" error!

arr[5]
#this will return the member of arr stored in location with an index of 5 -- i.e.
#the 6th member of arr. Thus, this will return the integer 8.