## list all files in your working directory with
list.file() or dir()

## ? befor a function will bring up the documentation
?list.files

## use the args() function to see what arguments a function can take
args(list.files)

## getwd() to assign the value of the current working directory

## strings or charctor texts have to be in ""
testdir <- "troyiscool"

## file.create() to make a files.

## list.files() to list all files.

## file.exists() to see if your file exists.

##file.info() to access information about the file.

## file.rename() to change the name of a file.
file.rename("mytest.R", "mytest2.R")

##file.copy to copy a file.
file.copy("mytest.R", "mytest2.R")

##file.path() to construct path to file.
file.path("mytest3.R")

## create a directory in the current wirjubg directory called 'testdir2' and subdirectory for it called 'testdir3', all in one command by using dir.create() and filepath
## subdirectory ex dir.create(file.path('testdir2', ' testdir3'), recursive = true).
## the part that shows ('testdir', 'testdir3') is the subdirectory.

## unlink() deletes a directory that you createted. every other fucking function sound it should then this comes along and us like nah unlink() not delete() wtf is that swirl??.

## the simplest way to create a swquence of numbers in R us by using ':' operator.

## ?':' is used to pull up documentation. 

## seq() is used to make a sequence of numbers. 
## use seq by=0.5 to make it go in incerments of 0.5.
seq(0, 10, by=0.5)
## use length= for a sequence of numbers.
seq(5, 10, length=30)

## say you dont know the length of my_seq, but we want to generate a sequence of intergers frim 1 to N, where N represents the length of my_seq vector
## one way you could do this is by using the operator ':' and the length() function.
1:length(my_seq)
## another way you could acheive this is by using seq(along.with = my_seq).
seq(along.with = my_seq)
## seq_along = generate regular sequences.
## along.with = take the length from the length of this argument.

## rep() stands for replicate

## if you want to do a certain amout of repetitions of the vector and a (c( then state the amount you wish to use using times = 
rep(c(0, 1, 2), times = 10)

## c() used to create vectors and objects

## paste() Concatenate vectors after converting to character.
## collapse = "" is an optional character string to separate the results.(number of spaces is how many spaces thw words are appart)
## Sep = A character sting to spearate the terms.
paste(my_char, collapse = " ")

my_name <- c(my_char, "Troy")

## : for generating sequences 
1:3
## would look something like "1" "2" "3".

## In R, NA is used to represent any value that is not available
## rep() replicates the values in x. 
## rnorm() Density, distribution function, quantile function and random generation with mean equal to mean and standard deviation equal to sd.
## is.na() tells us were our NAs are located in our data.

## '==' is a method of testing for equality between two objects. it is also the same as doing is.na function.

## sum() returns the sum of all the values present in its arguments.

## Inf means infinity.

## [] for selecting particular elements form a vector is by placing an 'index vector' in square brackets immediately following the name of the vector.

## '!' gives you the negation of a logical expression.
 ##!is.na is saying 'is not NA' 
  ## y <- x[!is.na(x)] takes all the non-NA values from x.

## use -c when dealing will all negitve numbers

## names() set the names of an object.

## dim() function tells you the diemnsions of an object.
 ## class () will tell you what 

## matrix() creates a matrix from the given set of values.
 ## nrow = sets the number of rows in a matrix.
  ## ncol = sets the number of columns in a matrix.
my_matrix2 <- matrix( 1:20, nrow = 4, ncol = 5)
   ## cbind() takes a sequence of vector, matrix or data frame arguments and combine by columns or rows.
    ## data.frame() allows you to store character vector of names right alongside your matrix of numbers.
     ## colnames() retrieves or sets the row or column nmaes of a matrix-like object.

## != operator tests whether two values are unequal.
 ## == operator tests whether two boolean values or numbers are equal.
  ## ! not operator negates logical expressions so that TRUE expressions become FALSE and FALSE expressions become TRUE.
   ##
 