family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
#QUESTION:
#Given a hash of family members, with keys as the title and an array of names as the 
#values, use Ruby's built-in select method to gather only siblings' names into a new array.



array = []

#this .each call checks to see if the key is either :sisters or :brothers, then
#if so, pushes the associated value into an empty array
family.each do |k,v|
  if k == :sisters || k == :brothers
    array << v
  end
end
#the array current has two items, an array of sister names and an array of brother names
#so we need to flatten it to get a mere list
array.flatten!
puts "#{array}"


#ALTERNATIVELY: we can create a new hash consisting only of the siblings key/val pairs
#we'll do this by calling .select method, which returns a new hash consisting of all and
#only the members of the old hash that satisfy the specified conditions.
#Then we create an array from new hash by calling the .values method and then the .flatten method

immediate_family = family.select do |k, v|
  k == :sisters || k == :brothers
end

arr = immediate_family.values.flatten

p arr