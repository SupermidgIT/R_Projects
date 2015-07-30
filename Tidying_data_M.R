### Tidy Data for manipulation, visualization, and modeling
  # Three conditions for Tidy Data
    # Each Variable forms a column
    # Each observation forms a row
    # Each type of observational unit forms a table

### Common Examples of Messy Data

  ### Column Headers stored as values, not variables names
    gather(.data, key,value = x, -y) ### takes all columns specified by x and turns them into values
    # for the column not selected -y. example:
    gather(students, sex, count, -grade)
    
  ### Multiple variables stored in each column i.e. male_class1 for male students in class 1
    
    
    students2 %>% ## references the students2 dataframe
      gather(sex_class, count, -grade) %>%  ##  takes columns that are values and turns them into observations(rows)
      separate(col = sex_class, into = c("sex", "class")) %>% ## Breaks columns with two variables into two columns with one variable
      print
    
  ### variables are stored in both rows in columns
    students3 %>%
      gather(class, grade, class1:class5, na.rm = TRUE) %>%  
      spread(test, grade) %>%  ## takes "values" and turns them into column names (variables)
      mutate(class = extract_numeric(class)) %>% ## replaces class5 to 5 for the class column
      print
    
    
  extract_numeric() ## extracts all characters from a vector
  
  ### Multiple observational units are stored in the same table
    student_info <- students4 %>% 
      select(id, name, sex) %>% ## subsets for the variables that are needed
      unique %>% ## removes the unique values for the dataframe
      print
    
  ### Single observational unit is stored in multiple tables
    # Opposite of the fourth problem
    x <- mutate(x, xy = "xyz") ## to add new columns identifying the dataframe for each dataframe
    bind_rows(x, y) ## to combind the new rows
    
### Case Study Example Code
  #  http://research.collegeboard.org/programs/sat/data/cb-seniors-2013
    
    sat %>% ## subsets for the data frame
      select(-contains("total")) %>% ## subsets columns for any column that doesn't contain "total"
      gather(part_sex, count, -score_range) %>% ## takes all columns specified by x and turns them into values
      separate(part_sex, c("part", "sex")) %>% ## Breaks two variables in one column into two columns 1 variable
      group_by(part, sex) %>% ## Groups rows by part and sex
      mutate(total = sum(count), prop = count / total) %>% ## creates a total variable and a proportion of total
      print
    