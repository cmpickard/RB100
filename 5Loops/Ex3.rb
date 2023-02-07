def count_down(num)
  puts num
  if num > 0
    num -= 1
    count_down(num)
  end
end

count_down(4)