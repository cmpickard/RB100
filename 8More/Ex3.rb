=begin
QUESTION:
What is exception handling and what problem does it solve?

ANSWER:
Exception handling is a way of giving instructions to the computer about what
to do when it encounters an error when running some code.
The default behavior when an error is encountered is to STOP the program. But...
that's often not desirable -- especially when the error isn't a CODING error but
some anticipatable problem arising from bad inputs over which the programmer has
no control. (e.g. a user inputs data of the wrong type or a data record is empty)
The coder may not want to program to stop working just because it ran into one 
instance of bad data, so she writes some exception handling code that tells the 
computer to DO SOMETHING ELSE and then KEEP GOING.

E.H. can also be used to help track down errors, but that's not the main usage,
I gather.