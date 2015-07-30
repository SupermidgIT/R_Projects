Open Intro_M


### The Basics of Statistics and Analysis
http://www.openintro.org/stat/down/OpenIntroStatSecond.pdf

### CONTINUOUS VARIABLE is one that can assume any value within the scope of the problem
### For the 'cars' data set: price, city MPG, and weight
  # Scatter Plot provides analysis of two variables.
  # In addition to possible dependencies

### DISCRETE VARIABLE is a variable that may take on one of a limited, and usually fixed, number of possible values

### CATEGORICAL VARIABLE is similar to a discrete variable, but 
### instead of assuming a fixed value, the variable is ascribed a fixed categorical description.
  # Useful to use a Bar Graph for visualization

range(x, na.rm = TRUE) ### Takes the range of a vector, arg2 removes na values

### Central Tendency: locates a typical value for a certain variable
  # common measures mean, median, mode

sum(x) ### takes the sum of a vector
mean(x) ## takes the average of a vector
median(x) ## takes the median of a vector
summary(x) ## gives the min, 1st qu., median, mean, 3rd qu., and max

sort(x) ## sort a vector from smallest to largest

### Histograms: visualize data density
  # Shape of distribution of data
### Skewness is measure of the extent to which the distribution of the data
  # leans to on side or the other
  # Left skew, median is greater than the mean. majority of 
  #Distribution is located to the right of the mean
### no skew = Symmetric, mean and median are approximately equal in value
  # 

### dispersion or variability: measure of how spread out or clustered data values are.
  # Interquartile Range, larger IQR's have more variability in the data
  # calculate 3rd quartile from 1st quartile to get IQR

  #1st Quartile or 25th percentile, 25% of data points fall at or below this value
  #3rd Quartile or 75 percentile, 25% of data points fall at or above this value

### Outlier is an observation that is unusual or
  # extreme relative to other values in the data set
  # Useful to identify heavy skew in a distribution
  # may signify data collection or entry error to scientist

### Variance is average of the Squared differences from the mean
  # (total distance of the data from the mean of the data)
  # Low variance indicated data points located near mean
  # high variance indicates that data points are spread further from the mean

### Standard Deviation: calculated as the Square root of the variance



