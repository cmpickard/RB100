puts "Give me an integer between 0 and 100, inclusive."
num = gets.chomp.to_i

case
  when -1 < num && num < 51
    puts "Your integer is between 0 and 50!"
  when 50 < num && num < 101
    puts "Your integer is between 51 and 100!"
  when num > 100
    puts "Your integer is more than 100 (DESPITE my explicit request otherwise.)"
  else 
    puts "No. Not like that."
end

