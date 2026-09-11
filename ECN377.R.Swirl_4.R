library(swirl) #pulling up swirl program
swirl() #starting swirl
BairdA #name


num_vect <- c(0.5, 55, -10, 6)        #create a numeric vector num_vect that contains the values 0.5, 55, -10, and 6.
tf <- num_vect < 1                    #create a variable called tf that gets the result 'num_vect is less than 1'
1 #'tf' will look like a vector of 4 logical values
tf #printing the contents --> TRUE FALSE  TRUE FALSE

num_vect >= 6 #asking whether each individual element of num_vect is greater than OR equal to 6.

#logical operators: `<`, `>`, `<=`, `>=`, `==`, `!=`
#If we have two logical expressions, A and B, we can ask whether at least one is TRUE with A | B (logical 'or' a.k.a. 'union') or whether they are both TRUE with A & B (logical 'and' a.k.a.'intersection'). Lastly, !A is the negation of A and is TRUE when A is FALSE and vice versa.
2 #FALSE: (3 > 5) & (4 == 4)
2 #TRUE: (TRUE == TRUE) | (TRUE == FALSE)
1 #TRUE: ((111 >= 111) | !(TRUE)) & ((4 + 1) == 5)

my_char <- c("My", "name", "is") #character vector
my_char #print contents

paste(my_char, collapse = " ") #changing to a character vector of 1 instead of 3

my_name <- c(my_char, "Abby")
my_name #[1] "My"   "name" "is"   "Abby"
paste(my_name, collapse = " ") #[1] "My name is Abby"

paste("Hello", "world!", sep = " ") #[1] "Hello world!"
paste(1:3, c("X", "Y", "Z"), sep = "") #[1] "1X" "2Y" "3Z" NOTE: don't add space in quotes this time

paste(LETTERS, 1:4, sep = "-") #LETTERS is a predefined variable in R containing a character vector of all 26 letters