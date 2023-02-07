=begin
Challenge: In exercise 11, we manually set the contacts hash values one by one. 
Now, programmatically loop or iterate over the contacts hash from exercise 11, 
and populate the associated data from the contact_data array. Hint: you will 
probably need to iterate over ([:email, :address, :phone]), and some helpful
methods might be the Array shift and first methods.

Note that this exercise is only concerned with dealing with 1 entry in the 
contacts hash, like this:

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}

As a bonus, see if you can figure out how to make it work with multiple entries 
in the contacts hash.
=end

#given code
contact_data = ["joe@email.com", "123 Main st.", "555-123-4566"]
contacts = {"Joe Smith" => {}}

#solution for one person's data
keys_array = [:email, :address, :phone]
new_hash = Hash.new

loop do 
  unless keys_array.empty?
    new_hash[keys_array.shift] = contact_data.shift
  else
    break
  end
end

contacts["Joe Smith"] = new_hash
puts contacts
puts ""



#solution for lots of people's data
contact_data = [["joe@email.com", "123 Main st.", "555-123-456#"],
                ["sally@email.com", "404 Not Found Dr.", "123-234-345#"],
                ["fake@email.com", "No street", "No phone number"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}, "No one" => {}}

#create a new integer var to keep track of which person we're on, for use as an 
#index. Also, create an array with the keys (names) from contacts, an array
#with all the names of the people whose contact info we're trying to save.

current_index = 0
name_keys = contacts.keys

#Outermost loop: pulls the first array from contact_data using .shift then 
#creates a new hash where the keys will be labels (.e.g :email) and the values
#will be the personal data pulled out of contact_data

loop do
  unless contact_data.empty?
    keys_array = [:email, :address, :phone]
    new_hash = Hash.new
    current_person_arr = contact_data.shift
  
  #inner loop: builds a new hash for a particular person, using the labels
  #stored in keys_array and the personal data stored in current_person_arr
  #loop breaks when we've used all the labels in keys_array
    loop do 
      unless keys_array.empty?
        new_hash[keys_array.shift] = current_person_arr.shift
      else
        break
      end
    end
    
    #now push the newly created hash for Person x into the contacts hash.
    #we use [name_keys[current_index]] to make sure we're associating the new
    #personal info hash with the right individual in the contacts hash
    contacts[name_keys[current_index]] = new_hash
    
    #increment the index so that our next loop will store a hash as a value for
    #the next individual listed in contacts
    current_index += 1
  
  #outermost loop breaks when there is no more user data in contact_data  
  else
    break
    
  end
end


puts contacts
