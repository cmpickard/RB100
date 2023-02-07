=begin
QUESTION:
Given the following data structures, write a program that copies the information from the array into the empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

=end

#given code
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}


#Step 1
#need to convert the contact_data array into a couple two hashes

contact_data.flatten!

joe_hash = {email: contact_data[0], 
            address: contact_data[1], 
            phone: contact_data[2]}
sally_hash =  {email: contact_data[3], 
            address: contact_data[4], 
            phone: contact_data[5]}

#this will push the new hashes into the contacts hash as values.
contacts["Joe Smith"] = joe_hash
contacts["Sally Johnson"] = sally_hash
puts contacts


#another way
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
#This says: 
#(1) Find/create a contacts hash: add the "Joe Smith" key 
#(2) With a value equal to:...
#(3) A found/created interior hash (no name b/c it's not its own object):
#(4) so we can add the :email key with a value equal to...
#(5) the entity located at the first index of the first item 
#in the contact_data array

contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]