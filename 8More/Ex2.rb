=begin
QUESTION:
What will the following program print to the screen? What will it return?

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

ANSWER:
I think the program will pring out nothing. The method definition doesn't
successfully call the block. It just says "block", which doesn't do the trick.
Saying "block" asserts the block, but doesn't run it. 
You need to say,
block.call
to get the block to run (and therefore print)

=end
