### the ... argument or ellipsis allows indefinite number of arguements, All arguments after the ellipsis need to be defaulted
### head() takes the first six lines of a data frame
### dim() takes the dimension of a data frame
### lapply() function takes a list as input, applies a function to each elemnt of the list, then returns a list of the same length as the original one
### cls_list <- lapply(data.frame, class) set the variable cls_list to be the classes of the data frame
### sapply()  Simplifies the lapply function by returning a vector or a matrix to a list
### unique() removes duplicate elements of a vector
### vapply allows you to specify the format of the result explicitly.
### tapply() splits data into groups based on values of variables then applies a function to it

### rm(list=ls(all=TRUE))  clear object out of current working directory



### LOOKING AT DATA

      ### dir() shows the files and folders of a directory

      ### object.size() examines the physical memory an object is using
  ### What is the format of the data?
      ### class()
####  str() what is the structure of the data
  ### What are the dimensions?
      ### dim()
      ### nrow() looks at the number of rows
      ### ncol(plants)
  ### What are the variable names?
      ### names()
      ### head()
      
  ### How are the variables stored?
      ### summary()
  ### Are there missing data?
  ### Are there any flaws in the data?