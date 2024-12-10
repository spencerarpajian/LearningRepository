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
geom_histogram(binwidth = 1, fill = "skyblue", color = "black") +
labs(title = "Mean Weight in Wales is Higher Than European Average") +
theme_dark()



# Creating a correlation plot

# val_cor <- health_data %>% select(BMI, Age, TotChol) %>%
  
val_cor <- health_data %>% select(BMI, Age, TotChol) %>%
 cor(use="complete.obs")

 ggcorr(val_cor, label= TRUE,label_alpha  = TRUE)

 