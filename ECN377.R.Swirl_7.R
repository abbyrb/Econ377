library(swirl) #pulling up swirl program
swirl() #starting swirl
BairdA

#Swirl 7: Matrices and Data Frames: Both represent 'rectangular' data types, meaning that they are used to store tabular data, with rows and columns.
#matrices can only contain a single class of data, while data frames can consist of many different classes of data

my_vector <- 1:20
my_vector
dim(my_vector) #Since my_vector is a vector, it doesn't have a `dim` attribute (so it's just NULL)
length(my_vector) # =20
dim(my_vector) <- c(4,5) #The dim() function allows you to get OR set the `dim` attribute for an R object
dim(my_vector) # = 4,5 ; the first number is the number of rows and the second is the number of columns. Just gave my_vector 4 rows and 5 columns and turned it into a matrix.
attributes(my_vector) #shows all of the attributes for the my_vector object

my_vector
class(my_vector) # = "matrix" "array" 
my_matrix <- my_vector #store as a matrix now
my_matrix2 <- matrix(data = 1:20, nrow = 4, ncol = 5) #another way to create a matrix from a set of data and designated rows/columns
identical(my_matrix,my_matrix2) #True

## Example 1: the numbers in our table represent some measurements from a clinical experiment, where each row represents one patient and each column represents one variable for which measurements were taken
patients <- c("Bill","Gina","Kelly","Sean")
cbind(patients,my_matrix) #matrices can only contain ONE class of data. Therefore, when we tried to combine a character vector with a numeric matrix, R was forced to 'coerce' the numbers to characters, hence the double quotes.

my_data <- data.frame(patients, my_matrix)
my_data #data.frame() function allowed us to store our character vector of names right alongside our matrix of numbers without quotes
class(my_data)

#Assigning names to the columns of our data frame so that we know what type of measurement each column represents:
cnames <- c("patient", "age", "weight", "bp", "rating", "test")
colnames(my_data) <- cnames
my_data