=begin
QUESTION:
Use Ruby's Array method delete_if and String method start_with? to delete all of the strings that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
Then recreate the arr and get rid of all of the strings that start with "s" or start with "w".

=end

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |string| string[0] == "s" }
puts arr

arr.insert(0,'snow')
arr.insert(3,'slippery')
arr.insert(4,'salted roads')
puts "here's the recontruction: #{arr}
"

arr.delete_if do |string|
  string[0] == "s" || string[0] == "w"
end

puts arr

#ALTERNATIVELY, could have used the .start_with method for arrays
#arr.delete_if { |str| str.start_with?("s") }
#arr.delete_if { |str| str.start_with?("s", "w") }