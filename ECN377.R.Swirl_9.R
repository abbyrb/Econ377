library(swirl)
swirl()
BairdA
2
1
9
Sys.Date()
mean(c(2,4,5))
submit()
boring_function('My first function!')
boring_function
submit() #Remember that to calculate the average of all of the numbers in a vector you find the sum of all the numbers in the vector, and then divide that sum by the number of numbers in the vector
my_mean(c(4,5,10))
submit()
remainder(5) #provided one argument to the function, and R matched that argument to 'num' since 'num' is the first argument. The default value for 'divisor' is 2, so the function used the default value provided
remainder(11,5)
remainder(divisor = 11, num = 5) # When you explicitly designate argument values by name, the ordering of the arguments becomes unimportant
remainder(4, div = 2) #can do patial matches as well
args(remainder) #'args' function lets you see the function behind the name
submit()
evaluate(sd, c(1.4, 3.6, 7.9, 8.8)) #idea of passing functions as arguments to other functions
evaluate(function(x){x+1}, 6) #The first argument is a tiny anonymous function that takes one argument `x` and returns `x+1`. Passed the number 6 into this function so the entire expression evaluates to 7
evaluate(function(x){x[1]}, c(8, 4, 0)) #an anonymous function to return the first element of the vector
evaluate(function(x){x[length(x)]}, c(8, 4, 0)) #an anonymous function to return the last element of the vector
?paste
paste("Programming", "is", "fun!")
submit()
telegram("Programming", "is", "fun!")
submit()
mad_libs(place = "Restaurant", adjective = "happy", noun = "award")
#You're familiar with adding, subtracting, multiplying, and dividing numbers in R. To do this you use the +, -, *, and / symbols. These symbols
   # are called binary operators because they take two inputs, an input from the left and an input from the right.
submit()
"I" %p% "love" %p% "R!"

