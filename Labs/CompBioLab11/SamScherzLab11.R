install.packages("tidyverse")
install.packages("ggplot2")
library(tidyverse)
library(ggplot2)
library(dplyr)

#Samuel Scherz Lab #11
######################

#First set wd to folder containing wood economics dataset

#1

WoodData <- read.csv("Global_Wood_Density_Database.csv", stringsAsFactors = F)

#lines below are just messing around with visualizing the data

head(WoodData)

WoodDataMatrix <- as.matrix(WoodData)

str(WoodDataMatrix)

#2, #3, and #4
#getting rid of NA Density Value

WoodDensity <- WoodData$Wood.density..g.cm.3...oven.dry.mass.fresh.volume

NADensityRow <- which(is.na(WoodDensity)) #Row with the NA

WoodData <- WoodData[-NADensityRow, ] 

mean(WoodDensity) #Testing if the NA has been removed 

#5
#For Loop Method:

unique(WoodData)

for(i in WoodData)
WoodDataGroup <- WoodData %>% group_by(Family, Binomial) %>% summarise (mean(WoodDensity))
View(WoodDataGroup)

group

