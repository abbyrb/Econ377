library(swirl) #pulling up swirl program
swirl() #starting swirl
BairdA

#Swirl Lesson 6: how to extract elements from a vector based on some conditions that we specify


x #random ordering of 20 numbers (from a standard normal distribution) and 20 NAs

x[1:10] #index vector to view a particular number of elements of x

#indexing with logical vectors
2
x[is.na(x)] # A vector of all NAs
y <- x[!is.na(x)] #isolated the non-missing values of x and put them in 
y
1
#indexing positive integers
y[y > 0] #positive elements of y
x[x > 0] #NAs mixed in with our positive numbers
x[!is.na(x) & x > 0] #only values of x that are both non-missing AND greater than zero
#R uses 'one-based indexing', which (you guessed it!) means the first element of a vector is considered element 1
x[c(3,5,7)] #subset the 3rd, 5th, and 7th elements of x
x[0]  #R doesn't prevent us from asking for elements that dont exist
x[3000] #^

#indexing negative integers
x[c(-2, -10)] #gives all elements of x EXCEPT for the 2nd and 10 elements
x[-c(2, 10)] #same result as ^ just less tedious for more elements

#'named' elements
vect <- c(foo = 11, bar = 2, norf = NA)
vect #returns each element with a corresponding name
names(vect) #returns only names of the 'vect'
vect2 <- c(11, 2, NA) #makes vect without names
names(vect2) <- c("foo", "bar","norf") #adds in names for ^
identical(vect,vect2) #returns 'TRUE' if vectors are identical; TRUE
3 #give us the second element of vect: vect["bar"]
vect["bar"]
vect[c("foo", "bar")] #subsetting a vector by named elements