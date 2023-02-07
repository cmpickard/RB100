=begin
Why does the following code...

def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

Give us the following error when we run it?

block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
from test.rb:5:in `<main>'

The method definition MEANS to have a block as a parameter but the syntax is wrong.
To pass a block into a method, you need to use an ampersand:

def execute(&block)

Since no & is used, the method is actually expecting to be passed an ordinary obj
-- an int, float, symbol, string, etc. When it receives a block instead of an
ordinary argument it throws this error.
"Hey! The method needs an argument and I didn't get one! All I got was this weird 
block thing, but that can't be right. The method doesn't use blocks."

=end