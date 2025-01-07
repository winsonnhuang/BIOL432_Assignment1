# R Script Number 2

# Loading the library needed
library(dplyr)

# Reading the csv file
measurements <- read.csv("measurements.csv")

# Adding a new column of data called Volume to estimate limb volume
# Since limbs are a similar shape to cylinders, the volume for cylinder formula is used
# Volume of a cylinder is V = pi*r^2*h, where radius will be the limb_width/2 and height will be the limb_length
measurements <- measurements %>%
  mutate(Volume = pi * (Limb_width/2)^2 * Limb_length)

# Overwriting the original measurements file so that it can contain a new Volume column
write.csv(measurements, file = "measurements.csv", row.names = FALSE)