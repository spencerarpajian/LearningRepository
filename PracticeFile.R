install.packages("GGally")
install.packages("NHANES")

library(tidyverse)
library(GGally)
library(readr)
library(NHANES)

# Loading data
data("NHANES")

View(NHANES)

#object creation

health_data <- NHANES %>% select(BMI,Age,Gender)

#Histogram from object data

ggplot(health_data, aes(x = BMI))+
geom_histogram(binwidth = 1)

