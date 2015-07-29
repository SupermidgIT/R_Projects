Getting and Cleaning data
### Working with dplyr
packageVersion(x) ### returns version of specified package

tbl_df(x) ### Load data into dplyr data frame
  ### tbl_df is an informative and compact data frame format

rm("x") ### removes r object from Global environment

### five verbs that cover most fundamental data manipulation task
  # select(), filter(), arrange(), mutate(), and summarize()

select(.data, column1.name, column2.name, column3.name) # Selects
  # from specified data frame, with names of columns as arguements
  # return in order specified
  # use : to specify a sequence of columns. i.e.
select(cran, r_arch:country)
  # use - to not select variable i.e.
select(cran, -time) # to unselect the time variable

filter() # used to select a subset of rows i.e.
filter(cran, package == "swirl") # returns only rows of cran corresponding
  # to where package is equal to swirl
  # can specify as many conditions as needed, seperated by commas i.e.
filter(cran, r_version == "3.1.1", country == "US")
  # use ?Comparison for list of available binary operators
  # use | to request one condition or another condition
filter(cran, country == "US" | country == "IN")
  # use function !is.na() on an arguement to
  # filter out rows that are "NA" i.e.
filter(cran, !is.na(r_versions))

arrange() ## order or sort rows of dataset according to values
  # of a particular variable
arrange(cran, ip_id) ## arranges in ascending order
  # use desc(x) to arrange in descending order
arrange(cran2, desc(ip_id))
  # can be order by multiple variables, first arguement will be arranged first
arrange(cran2, package, ip_id)

mutate()  # create new variable column based on calculation or aggregate function
mutate(cran3, size_mb = size / 2^20)

summarize()   # Quickbly collapses the dataset to a single row.
  # useful to calculate quick descriptive statistics of a variable or column

