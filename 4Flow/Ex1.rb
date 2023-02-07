(32 * 4) >= 129
#returns false

false != !true
#returns false

true == 4
#returns false (the boolean true is not the same as the int 4)

false == (847 == '847')
#returns true (the right hand equation evaluates to false, and then false and false are equal, so true)

(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false
#returns true (the second to last disjunct is true, which is sufficient making all disjunctions T)