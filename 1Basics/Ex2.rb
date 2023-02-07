puts "Give me a 4 digit integer: "
int = gets.chomp.to_i
thou = int / 1000
huns = (int - (thou*1000)) / 100
tens = (int - (thou*1000) - (huns*100)) / 10
ones = (int - (thou*1000) - (huns*100) - (tens*10))
puts "Your number has #{thou} thousands, #{huns} hundreds, #{tens} tens, and #{ones} ones."