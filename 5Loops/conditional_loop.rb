#conditional_loop.rb

i = 0
loop do
  i = i + 2
  next if i == 4
  puts i
  if i == 10
    break
  end
end