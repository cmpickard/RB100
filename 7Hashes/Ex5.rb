#Question: What method could you use to find out if a Hash contains a specific 
#value in it? Write a program that verifies that the value is within the hash.

#create a hash to play around with
my_hash = {greek: "language", gronk: "nickname", grack: "gibberish"}

#create a new method that checks whether a passed in value is present in a 
#passed in hash. puts an answer and return a boolean.
def check_value(value, hash)
  if hash.value?(value)
    puts "Yep!"
    return true
  else 
    puts "Nope!"
    return false
  end
end

#tests
check_value("nickname", my_hash)
check_value("stickname", my_hash)