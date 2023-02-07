def all_cap_long(string)
  length = string.length
  if length > 10
    string.upcase
  else 
    string
  end
end

puts all_cap_long("lets go to the zoo please")
puts all_cap_long("no yell")