library(swirl)
swirl()
BairdA
5
1
#Lession 14: Dates and Times
d1 <- Sys.Date() #current date
class(d1) # "Date"
unclass(d1) # number of days since internal start date of 1970-01-01
d1
d2 <- as.Date("1969-01-01") #refercing a date prior to internal start date
unclass(d2) # draws a negative date of -365 because it is one year from the internal start date
t1 <- Sys.time()
t1 # returns date and time
class(t1)
unclass(t1)
t2 <- as.POSIXlt(Sys.time())
class(t2) # "POSIXlt" "POSIXt"
t2
unclass(t2)
str(unclass(t2)) # compact view of ^
t2$min # just the minutes
weekdays(d1) # Date object that contains today's date
months(t1) # month
quarters(t2) # quarter
t3 <- "October 17, 1986 08:24"
t4 <- strptime(t3, "%B %d, %Y %H:%M")
t4
class(t4)
Sys.time() > t1 # time has passed since I created it
Sys.time() - t1 # time difference since I created it
difftime(Sys.time(), t1, units = 'days') # time difference in days since I created it

