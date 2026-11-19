library(swirl)
swirl()
BairdA

#Lesson 12: Looking at Data

ls() #dataset constructed from the United States Department of Agriculture's PLANTS Database
class(plants) # stored in a data frame
# rectangular and two dimensional with rows and columns
dim(plants) #returns number of rows and columns
nrow(plants) #rows specifically
ncol(plants) #columns specifically
object.size(plants) #space the data set is occupying in memory
names(plants)
head(plants) #preview top of data set
head(plants, 10) #for specific number of rows it returns
tail(plants, 15) #preview bottom of data set with specific number of rows
summary(plants) #provides different output for each variable, depending on its class
table(plants$Active_Growth_Period)
str(plants) #returns summary of all the other functions above -> name, class, preview, observations, variables, etc.