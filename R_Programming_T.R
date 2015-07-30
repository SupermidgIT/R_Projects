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
   
## Sys.Date() returns a value based on your computer's enviorment, while other functions manipulate imput data in order to compute a retuen value.

as.Date() ## reference a date.
  as.Date("1969-01-01")

 ## mean() takes a vector of numbers as imput, returns the average of all of the numbers in the imput mi. Imputs to function are often called arguments. Providing arguments to a function is also sometimes called passing arguments to that function. arguments you want to pass to a function go inside the function's parentheses.

## sd this function computes the standard deviation of the values in x. If na.rm is TRUE then missing values are removed before computation proceeds.

evaluate(function(x){x+1}, 6)
 ##The first argument is a tiny anonymous function that takes one argument `x` and returns `x+1`. We passed the number 6 into this function so the entire expression evaluates to 7.

head() ## by default it shows the first 6 rows of a dataset. 
 head(x, 10) ## you can alter this behavior by passing a second argument the number of rows you'd like to view.
 
tail() ## will show the last 6 rows of the dataset.
  tail(x, 10) ## will alter the amout of rows you want to show.
  
  ## dim() to check the dimensions of the dataset.(rows and columns)
    ## lapply() function takes a list as imput, applies a function to each element of the list, then returns a list of the same length as the original one. Since a data frame is really just a list of vectors (you can see this with as.list(flags)), we can use lapply() to apply the class() function to each colum of the flags dataset. Let's see it in action!
cls_list <- lapply(flags, class)
 ## the l in lapply stands for list.

##unique() returns a vector, data frame or array like x but with duplicate elements/rows removed.

## vapply() is similar to sapply, but has a pre-specified type od return value, so it can be safer (and sometimes faster) to use.
## tapply() Apply a function to each cell of a ragged array, that is each (non-empty) group values given by a unique combination of the levels of certain factors.

object.size() ## used to see how much memory your dataset is occupying.

summary() ## provides different output for each variable, depending on its class. for numeric data summary() displays the minimum, 1st quartitle, meadian, mean, 3rd quartitle, and maximum. These values help us understand how the data are distributed.

str() ## tells you the class, the oberservations and veriables (rows, columns), name and class of each variable, as well as a preview of its contents. 

sample() ## take a sample of the specified size from the elements of x using either with or without replacement.
 sample(1:6, 4, replace = TRUE) ## is and example for rolling a six sided die. 
  ## replace means that each number is replaced after it is selected, so that the same number can show up more that once.

 flips <- sample(c(0,1), 100, replace = TRUE, prob = c(0.3,0.7))
 ## this is an example of trying to simulate 100 flips of an unfair two-sided coin. This prticular coin has a 0.3 probability of landing 'tails' and a 0.7 probability of landing 'heads'.
 
rbinom() ## stands for random binormal variable
  ## represents the number of 'successes' in a given number of independent 'trials'. 

  rbinom(1, size = 100, prob = 0.7)
  ## represents the number of heads in 100 flips of our unfair coin.

rnorm() ## to sumulate random numbers from many other probability distributions.
  
rpois() ## Density, distrabution function, quantile function and random generation for the Poission distribution with parameter lambda.
lambda argument ## vector of (non-negative) means.

  rpois(5, lambda = 10)
  
  my_pois <- replicate(100, rpois(5,10))
  ## now we can get the mean of each column in my_pois using the colMeans() fucntion
    cm <- colMeans(my_pois)
    
POSIXct ## represents the (signed) number of seconds since the beginning of 1970 (in the UTC time zone) as a numeric vector.
POSIXlt ## is a named list of vectors representing.

weekdays() ## will return the day of week from any date or time object.
months() ## will return the month on any date or time object.
quarters() ## returns the quarter of the year (Q1-Q4).

strptime() ## converts character vectors to POSIXlt.
  ## similar to as.POSIXlt(), except that the input doesn't have to be in a particular format (YYYY-MM-DD)

%B ## full month name in the current locale.
%d ## day of the month as decimal number.
%Y ## year with century.
%H ## hours as decimal number (00-23).
%M ## minute as a decimal number (00-59).

t3 <- "October 17, 1986 08:24"

t4 <- strftime(t3, "%B %d, %Y %H %M")
  
t4
  [1] "1986-10-17 08:24:00 MDT"

difftime() ## allows you to specify a 'units' parameter.

  difftime(Sys.time(), t1, units = 'days')
    Time difference of 0.3210728 days
    
xlab ## to title the x-axis
ylab ## to title the y-axis
col = ## to color the plots
xlim ## to limit the x-axis
  xlim = c(10, 15)
ylim ## to limit the y-axis
pch = ## to change the shape of the symbols

boxplot() ## produce a box-and-whisker plots of the given grouped values.

as.character() ## Create or test for objects of type "character".



