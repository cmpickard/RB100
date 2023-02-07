=begin
QUESTION: Using some of Ruby's built-in Hash methods, write a program that loops
through a hash and prints all of the keys. Then write a program that does the 
same thing except printing the values. Finally, write a program that prints both
=end

#create a hash to play around with
hash = {greek: "language", gronk: "nickname", grack: "gibberish"}

#first we'll print all the keys
hash.each_key{ |k| puts k }

#now we'll print all the values
hash.each_value{ |v| puts v }

#now we'll print both
hash.each{ |k,v| puts  "#{k} is paired with #{v}" }