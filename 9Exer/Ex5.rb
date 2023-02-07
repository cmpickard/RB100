#Q
#Get rid of 11. And append a 3.

#old code
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr << 11
arr.unshift(0)

#new task
arr.pop
arr.push(3)
puts "#{arr}"