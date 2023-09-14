# Load the readxl package
library(readxl)

# Create the dataframe
life_insurance_40=read_excel('life-insurance-40.xlsx')

# Preview the data
life_insurance_40

# Install and load data cleaning packages
install.packages("here")
library("here")
install.packages("skimr")
library("skimr")
install.packages("janitor")
library("janitor")

#Ensures there are only characters, numbers, and underscores in column names
life_insurance_40 <- clean_names(life_insurance_40)

# Install, load, and update tidyverse
install.packages("tidyverse")
library("tidyverse")
tidyverse_update()

# Load ggplot2
library("ggplot2")

# Visualize the data: version1-0
ggplot(data = life_insurance_40)+
  geom_point(mapping=aes(x=age,y=scheduled_premium))

# Creates a smooth line rather than a scatterplot
ggplot(data = life_insurance_40)+
  geom_smooth(mapping=aes(x=age,y=scheduled_premium))

# Using add_column()
life_insurance_40_2 <- life_insurance_40 %>%
  add_column(twenty_year_premium = "727.56")

# Convert new column to numeric type
life_insurance_40_2$twenty_year_premium = as.numeric(as.character(life_insurance_40_2$twenty_year_premium))

# Delete the values of twenty_year_premium from ages 61 to 80
life_insurance_40_2[22,6] <- NA
life_insurance_40_2[23,6] <- NA
life_insurance_40_2[24,6] <- NA
life_insurance_40_2[25,6] <- NA
life_insurance_40_2[26,6] <- NA
life_insurance_40_2[27,6] <- NA
life_insurance_40_2[28,6] <- NA
life_insurance_40_2[29,6] <- NA
life_insurance_40_2[30,6] <- NA
life_insurance_40_2[31,6] <- NA
life_insurance_40_2[32,6] <- NA
life_insurance_40_2[33,6] <- NA
life_insurance_40_2[34,6] <- NA
life_insurance_40_2[35,6] <- NA
life_insurance_40_2[36,6] <- NA
life_insurance_40_2[37,6] <- NA
life_insurance_40_2[38,6] <- NA
life_insurance_40_2[39,6] <- NA
life_insurance_40_2[40,6] <- NA
life_insurance_40_2[41,6] <- NA
life_insurance_40_2[42,6] <- NA

# Visualize the data: version1-0
ggplot(data = life_insurance_40_2)+
  geom_smooth(mapping=aes(x=age,y=scheduled_premium))+
  geom_smooth(mapping=aes(x=age,y=twenty_year_premium))

# Sum the premium for the 20-year
sum(life_insurance_40_2$twenty_year_premium, na.rm=TRUE)