library(swirl)
swirl()
BairdA

#Lesson 11: vapply and tapply

sapply(flags, unique) # returns a list containing one vector of unique values for each column of the flags dataset

#Whereas sapply() tries to 'guess' the correct format of the result, vapply() allows you to specify it explicitly

vapply(flags, unique, numeric(1)) #testing error
ok()
sapply(flags, class) #will return a character vector containing the class of each column in the dataset
vapply(flags, class, character(1)) # The 'character(1)' argument tells R that we expect the class function to return a character vector of length 1 when applied to EACH column of the flags dataset

tapply() #helps with spliting your data into groups based on the value of some variable, then apply a function to each group.
?tapply
table(flags$landmass)
table(flags$animate)
tapply(flags$animate, flags$landmass, mean)
tapply(flags$population, flags$red, summary)
5
tapply(flags$population, flags$landmass, summary)
2