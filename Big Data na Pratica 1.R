# Big Data Problem - Analyzing the Average Temperature in Brazilian Cities

# This project aims to create a simple R script showing how to: 
# 1. Read a dataset
# 2. Process some of its data
# 3. Display some graphs with insights

# Dataset Source: Berkeley Earth (http://berkeleyearth.org/data)


# Installing and loading packages 
install.packages("readr")
install.packages("data.table")
install.packages("dplyr")
install.packages("ggplot2")

library(readr) # data reading
library(dplyr) # data manipulating
library(ggplot2) # create the graphics
library(scales) # data manipulating
library(data.table) # data reading


# Loading the dataset

# For resource optimization I tested 3 functions
# I'm using system.time() function to measure the execution time

# Using read.csv2()
system.time(df1 <- read.csv2("TemperaturasGlobais.csv"))
# In my computer, the functions took 37 seconds and consumed 1.1 GB of memory to read the dataset

# Using read.table()
system.time(df2 <- read.table("TemperaturasGlobais.csv"))
# This second function took 16 seconds and also consumed 1.1 GB of memory to read the dataset

# Using fread()
system.time(df <- fread("TemperaturasGlobais.csv"))
# This last function I tested took less than 5 seconds and consumed 427 MB of memory to read the same dataset

# After clearing the memory I opted to use fread() function to read the dataset



# In this project I'm looking for only Brazilian cities. So I need to subset my dataset
brazilianCities <- subset(df, Country == 'Brazil')
brazilianCities <- na.omit(brazilianCities)

# At this moment, I reduced a dataset with more than 8.5M rows to a new dataset with 450k rows
nrow(df) # Dataset
nrow(brazilianCities) # Subset


# Preparing and Organizing dataset

# For the plot, we need to recognize the date as a date and create fields with month and year
brazilianCities$dt <- as.POSIXct(brazilianCities$dt, format='%Y-%m-%d')
brazilianCities$Month <- month(brazilianCities$dt)
brazilianCities$Year <- year(brazilianCities$dt)

# Subset some cities
# City: Palmas
city1 <- subset(brazilianCities, City == 'Palmas')
city1 <- subset(city1, Year %in% c(1796,1846,1896,1946,1996,2012))

# City: Curitiba
city2 <- subset(brazilianCities, City == 'Curitiba')
city2 <- subset(city2, Year %in% c(1796,1846,1896,1946,1996,2012))

# City: Recife
city3 <- subset(brazilianCities, City == 'Recife')
city3 <- subset(city3, Year %in% c(1796,1846,1896,1946,1996,2012))


# Building the Plots

p_city1 <- ggplot(city1, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
  geom_smooth(se = FALSE,fill = NA, size = 2) +
  theme_light(base_size = 20) +
  xlab("Month")+
  ylab("Average Temperature") +
  scale_color_discrete("") +
  ggtitle("Average Temperature over the years in Palmas") +
  theme(plot.title = element_text(size = 18))

p_city2 <- ggplot(city2, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
  geom_smooth(se = FALSE,fill = NA, size = 2) +
  theme_light(base_size = 20) +
  xlab("Month")+
  ylab("Average Temperature") +
  scale_color_discrete("") +
  ggtitle("Average Temperature over the years in Curitiba") +
  theme(plot.title = element_text(size = 18))

p_city3 <- ggplot(city3, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
  geom_smooth(se = FALSE,fill = NA, size = 2) +
  theme_light(base_size = 20) +
  xlab("Month")+
  ylab("Average Temperature") +
  scale_color_discrete("") +
  ggtitle("Average Temperature over the years in Recife") +
  theme(plot.title = element_text(size = 18))


# Plotting
p_city1
p_city2
p_city3

