=begin
Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.

"laboratory"
"experiment"
"Pans Labyrinth"
"elaborate"
"polar bear"
=end
arr = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]
arr.each do |x|
  if x =~ /lab/ || x =~ /Lab/
    puts x
  end
end
#this version checks for both 'lab' and 'Lab'