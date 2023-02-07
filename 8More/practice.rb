#Regex practice
var = "Let's go!!"
puts var =~ /!/
#Syntax: use =~ to compare, string on the left and expression to look for on the right.
#the book says the order usually doesn't matter, though -- can flip left and right.
#the expression you're looking for needs to be set off between '/'s 
#Returns: the index where the (first) occurrence of the expression is found. Nil if none.
#since ints evaluate to true, and nils to false, you can use these as booleans
#"if this string contains /x/, then do this" etc
puts var =~0 /L/


#Useful standard classes
#Some of Ruby's classes don't have associated objects, but instead, contain a 
#collection of useful class methods (i.e. functions.) -- notice, because the
#class doesn't have any associated object, you aren't calling the methods on
#particular instances of the Class obj -- like, your aren't saying "Do this
#task on this particular string" or whatever. Rather, you are calling the class
#function and saying "Hey, do your thing on this object (which belongs to a diff
#class)" E.g. the Math class can calculate squareroots. Just call the call method
##.sqrt and pass in an object that can be squarooted. (and int or float)
Math.sqrt(400) #will return 20.0
#capital M here because it's a class method, not an instance method. There are 
#no instance methods for the Math class. The Time class is the other one like this
#that's mentioned in the book.