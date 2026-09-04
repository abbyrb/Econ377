library(swirl)                        #accessing swirl lessons
swirl()

BairdA #name

#Starting Swirl Lesson 3: Sequences of Numbers

1:20                                  #returns every integer between (and including) 1 and 20
pi:10                                 #vector of real numbers starting with pi (3.142...) and increasing in increments with an upper limit of 10

15:1                                  #returns backwards in increments of 1

?':'                                  #to access documentation about an R function with a question mark followed by the function name; using '' for operators
seq()                                 #seq function gives more control than ':'
seq(1,20)                             #returns same output as 1:20
seq(0,10, by=0.5)                     #vector of numbers ranging from 0 to 10, incremented by 0.5
my_seq <- seq(5,10,length=30)         #sequence of 30 numbers between 5 and 10
length(my_seq)                        #confirming that my_seq has length 30

1:length(my_seq)                      #new vector that is the same length as "my_seq"
seq(along.with = my_seq)              #another option to do ^
seq_along(my_seq)                     #built in function for this ^^


#rep() = 'replicate'
rep(0, times =40)                     #creating a vector that contains 40 zeros -> 'times' function
rep(c(0,1,2), times=10)               #creating a vector to contain 10 repetitions of the vector (0, 1, 2) -> 'times' function with c() 
rep(c(0,1,2), each = 10)              #creating a vector to contain 10 zeros, then 10 ones, then 10 twos -> 'each' function with c()
