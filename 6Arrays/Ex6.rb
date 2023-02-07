names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'

=begin 
TypeError: no implicit conversion of String into Integer
  from (irb):2:in `[]='
  from (irb):2
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'
QUESTION: What is the problem and how can it be fixed? 

The program is trying to lookup a member of names, using an index. Indexes
are integers, so it's expecting an integer inside the [ ]. But we've passed it
a string! That's no good. In some cases, strings will be implicitly converted
by the program into an integer, but not in this case.
Hence, the error. 
To fix the issues, we have a few options.
We can 
(a) simply use the correct integer -- which is 3.
(b) call a method inside the []  that lets us search through the names array for the member
equal to 'margaret' and which returns the index of that member. That method will return 3 
and so that's the index that will be used for the re-assignment.

=end
