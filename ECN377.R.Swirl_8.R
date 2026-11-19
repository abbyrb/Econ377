library(swirl) #pulling up swirl program
swirl() #starting swirl
BairdA

#Swirl 8: Introduction to logical operations
# There are two logical values in R, also called boolean values. They are TRUE and FALSE. In R you can construct logical expressions which will evaluate to either TRUE or FALSE.

##Equality Operator '=='##
TRUE==TRUE #True
(TRUE==TRUE) #True
(FALSE==TRUE) == FALSE  #True
6==7 #False

##Less Than Operator '<'##
6<7  #True
##Less-than-or-equal-to Operator `<=`##
6<=7  #True
10<=10  #True
##Greater-than-or-equal-to Operator `>=`##
2 # Which of the following evaluates to FALSE? 9 >= 10
4 # Which of the following evaluates to TRUE? -6 > -7
##Not Equals Operator '!='##
5!=7
!5==7 #'!' negates the expression; so makes it read as 'Not True that 5 equals 7'

#The equals operator `==` tests whether two boolean values or numbers are equal, the not equals operator `!=` tests whether two boolean values or numbers are unequal, and the NOT operator `!` negates logical expressions so that TRUE expressions become FALSE and FALSE expressions become TRUE.

4 #Which of the following evaluates to FALSE? !(0 >= -1)
4 #What do you think the following expression will evaluate to: (TRUE != FALSE) == !(6 == 7)? TRUE

FALSE & FALSE
#You can use the `&` operator to evaluate AND across a vector. The `&&` version of AND only evaluates the first member of a vector. For practice, type the expression TRUE & c(TRUE, FALSE, FALSE)
TRUE & c(TRUE, FALSE, FALSE) #= TRUE FALSE FALSE ; the left operand `TRUE` is recycled across every element in the vector of the right operand.

#The OR operator follows a similar set of rules. The `|` version of OR evaluates OR across an entire vector, while the `||` version of OR only evaluates the first member of a vector.
TRUE | c(TRUE, FALSE, FALSE)  #TRUE TRUE TRUE
TRUE || c(TRUE, FALSE, FALSE) #TRUE

#All AND operators are evaluated before OR operators
5 > 8 || 6 != 8 && 4 > 3.9
#First the left and right operands of the AND operator are
# evaluated. 6 is not equal 8, 4 is greater than 3.9, therefore both operands are TRUE so the resulting expression `TRUE
# && TRUE` evaluates to TRUE. Then the left operand of the OR operator is evaluated: 5 is not greater than 8 so the
# entire expression is reduced to FALSE || TRUE. Since the right operand of this expression is TRUE the entire expression
# evaluates to TRUE.

4 #Which one of the following expressions evaluates to TRUE? TRUE && FALSE || 9 >= 4 && 3 < 6
2 #Which one of the following expressions evaluates to FALSE? FALSE && 6 >= 6 || 7 >= 8 || 50 <= 49.5

isTRUE(6>4) #If that argument evaluates to TRUE, the function will return TRUE. Otherwise, the function will return FALSE.
1 #!isTRUE(4 < 3) = TRUE
identical('twins','twins') #=TRUE
4 #identical(5 > 4, 3 < 3.1) = TRUE
xor(5==6, !FALSE) #The xor() function stands for exclusive OR. If one argument evaluates to TRUE and one argument evaluates to FALSE, then this function will return TRUE, otherwise it will return FALSE.

2 # xor(4 >= 9, 8 != 8.0) ; evaluates to FALSE

ints <- sample(10)
ints
ints > 5
which(ints>7)
1 # which(ints <= 2)
#The any() function will return TRUE if one or more of the elements in the logical vector is TRUE. The all() function will return TRUE if every element in the logical vector is TRUE.

any(ints<0)
all(ints>0)
3

