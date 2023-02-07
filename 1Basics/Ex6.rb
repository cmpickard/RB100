puts "Give me three two digit integers, with a single space in between them: "
ints = gets.chomp
array = ints.split(" ")
first = array[0].to_f
second = array[1].to_f
third = array[2].to_f
puts first*first, second*second, third*third