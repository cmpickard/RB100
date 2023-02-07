=begin

QUESTION
If you see this error, what do you suspect is the most likely problem?
    NoMethodError: undefined method `keys' for Array

A. We're missing keys in an array variable.
B. There is no method called keys for Array objects.
C. keys is an Array object, but it hasn't been defined yet.
D. There's an array of strings, and we're trying to get the string keys out of the array, but it doesn't exist.

ANS:
You tried to call the .keys method on an array object. There is no such method for 
arrays, so you got that error. So... B
=end