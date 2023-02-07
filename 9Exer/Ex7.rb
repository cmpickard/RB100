=begin
QUESTION:
What's the major difference between an Array and a Hash?

ANS:
an array is an ordered list of objects. They don't need to be the same type.

A hash is (as of some more recent updates) ALSO an ordered list BUT the items
in the lists are actually pairs of objects: the first (a key) mapped onto the 
second (a value.)
Hashes work like functions in algebra. Each key in the hash is unique, but 
multiple keys can point to the same value. 
So there can only be, e.g., one :lion key, but multiple keys (:lion, :tiger)
can have "roar" as their value.
Usually the keys are stored as symbols, but they don't have to be.

=end