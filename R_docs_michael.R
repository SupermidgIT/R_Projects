
## erads data into R: following arguements-

read.table()
file ## name of file or connection
header ## logical indicating if the file has a header line
sep ## a string indicating how the columns are separated
colClasses ## a character vector indicating the class of each column in the data set
nrows ## number of rows in the data set
comment.char ## a character string indicating the comment character
skip ## the number of lines to skip from the beginning
stringAsFactors ## should character variables be coded as factors?

rm(list=ls())
## remove variables in objects within a workspace

rep(NA, 100)  ## create a repeat vector of NA 100 times

rnorm(1000)  ### Generates random numbers from a normal distribution

y <- x[!is.na(x)]  ## Y is subset of X with negation of NA values of X

x[c(-2, -10)] ##select all elements except 2 & 10

x[!is.na(x) & x > 0] ## Subset x for Non NA values and greater than 0

dim()  ## dimentions of an object

cbind() ## Combines two vectors/matrics to make a new column

data.frame() ## Creates a data frame with two vectors of different classes

colnames(my_data) <- cnames ## names the columns of data frame

ozone[!is.na(ozone)]
## Subset non NA values from ozone variable

ozone2 <- ozone[!is.na(ozone)]
## set previous example to ozone 2
mean(ozone2) 
## retrieve Non NA values of ozone




## Function basics


add2 <- function(x, y) {
      x + y
}

above10 <- function(x) {
      use <- x > 10
      x[use]
}

### n=10 defaults n to 10
above <- function(x, n=10) {
  
      use <- x > n
      x[use]
}

### retrieving the means of each column for data frame
columnmean <- function(y, removeNA = TRUE) {
    ### removeNA = TRUE defaults function to remove all NA values
      nc <- ncol(y)
      ### ncol() returns a count of the columns
      
      means <- numeric(nc)
      
      for(i in 1:nc) {
        mean[i] <- mean(y[, i], na.rm = removeNA)
      }
      means
}

### sd() calculates the standard deviation
### na.rm = FALSE <arguement that is used to remove NA values>


### Functions are created using the function() directive and are stored as R objects just like anything else. In particular, they are R objects of class "function"
### f <- function(<arguments>) {
###        do something interesting
###         }
### Functions can be passed as arguements to other functions
### Functions can be nested, so that you can define a function inside of another function the return value of a function is the last expression in the function body to be evaluated
### Functions have named arguements which potentially have default values
###   The formal arguements are the arguements included in the function definition
###   The formals function returns a list of all the formal arguements of a function
###   Not every function call in R makes use of all the formal arguements
###   Function arguements can be missing or might have default values

### "..." arguement indicates a variable number of arguements that are usually passed on to other functions


#### Webscraping Basics

con = url("http://scholar.google.com/citations?user=HI-I6C0AAAAJ&hl=en")
htmlCode = readLines(con)
close(con)
htmlCode

library(XML)
url <- "http://scholar.google.com/citations?user=HI-I6C0AAAAJ&hl=en"
html <- htmlTreeParse(url, useInternalNodes=T)

xpathSApply(html, "//title", xmlValue)

library(httr); html2 = GET(url)
content2 = content(html2,as="text")
parsedHtml = htmlParse(content2,asText=TRUE)
xpathSApply(parsedHtml, "//title", xmlValue)