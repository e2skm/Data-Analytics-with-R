# Create vectors and load them into dataframe
id <- c(1:10)
name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", 
          "Candace Miller", "Carlson Landy", "Pansy Jordan",  "Darius Berry", "Claudia Garcia")
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer",
               "Programmer", "Management", "Clerical", "Developer", "Programmer")
employee <- data.frame(id, name, job_title)

# Split names into first and last name
separate(employee,name,into=c('first_name','last_name'),sep=' ')

# Create vectors and load them into dataframe
first_name <- c("John", "Rob", "Rachel", "Christy", "Johnson", "Candace", "Carlson", "Pansy",
                "Darius", "Claudia")
last_name <- c("Mendes", "Stewart", "Abrahamson", "Hickman", "Harper", "Miller", "Landy", 
               "Jordan", "Berry", "Garcia")
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer",
               "Management", "Clerical", "Developer", "Programmer")
employee <- data.frame(id, first_name, last_name, job_title)

# Join first and last name into full name
unite(employee,'full_name',first_name,last_name,sep=' ')

# View penguin dataset
View(penguins)
colnames(penguins)

# Add a column to dataset
penguins %>% 
  mutate(bodymass_kg = body_mass / 1000, flipper_len_cm = flipper_len /100 ) %>% 
  drop_na()

