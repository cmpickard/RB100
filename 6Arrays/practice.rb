arr = ["b", "a"]
arr = arr.product([Array(1..3)])
puts "#{arr}"
arr.first.last.delete
puts "#{arr}"