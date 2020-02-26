##Sam Scherz Chapter 05 Code 

#Problem #1
###########

x <- 60

if(x > 5){
  
  print("Larger than 5")
  
  
} else print("Smaller than 5")

#Problem #2
###########

#2a

ExampleDataValues <- ExampleData$x
## ^ Stores the sole dataframe variable "x" as "ExampleValues"

for(i in 1:2024){
  
  if(ExampleDataValues[i] < 0) {
    
    
    
    ExampleDataValues[i] <- NA
   
  }
    print(ExampleDataValues)
    
}

#2b 

 ExampleDataValues[is.na(ExampleDataValues)] <- NaN

 ExampleDataValues
 
 #2c
 
 ExampleDataValues[which(is.nan(ExampleDataValues))] <- 0

## The left hand of this "equation" is locating the positions of all elements in ExampleData.csv
 # that are NaN, and replacing them with value 0
 
 ExampleDataValues
 
 #2d
 
length(which(ExampleDataValues >= 50 & ExampleDataValues <= 100))

#The output of this line of code is the number of elements in ExampleData.csv that have a value
# between 50 and 100

#2e
FiftyToOneHundred <- rep(0, 498)

FiftyToOneHundred <- ExampleDataValues[ExampleDataValues >=50 & ExampleDataValues <= 100]

FiftyToOneHundred

#2f 

write.csv(FiftyToOneHundred, "/home/sam/Documents/Courses/EBIO4420/CompBioHomeworkAndLabs/Labs/Lab05/FiftyToOneHundred.csv", row.names = F)


#Problem #3
###########

#3a 

#Imported dataset via Environment window in R-Studio

GasEmissionsData <- CO2_data_cut_paste$Gas

Year <- CO2_data_cut_paste$Year

GasPerYear <- cbind(Year, GasEmissionsData)

GasPerYear

FirstCO2RecordingYear <- head(GasPerYear[which(GasEmissionsData > 0)], n = 1)

FirstCO2RecordingYear

## Proud of these lines of code. I extracted the year and gas columns from the CO2 data sheet, and then used the columns to create a [263, 2] dimension matrix. 
# I then used the "which" function combined with the "head" function to list the first row in which the gas emissions were greater than 0. 


#Output of this code gives the first year in which gas emissions were recorded. 

#3b 

TotalEmissions <- CO2_data_cut_paste$Total

TotalPerYear <-cbind(Year, TotalEmissions)

YearsBtwn200And300 <- (TotalPerYear[which(TotalEmissions >= 200 & TotalEmissions <= 300)])

YearsBtwn200And300

# Part 2
########

totalGenerations <- 1000
n <- rep(0, totalGenerations)
p <- rep(0, totalGenerations)
initPrey <- 100 # initial prey abundance at time t = 1
initPred <- 10 # initial predator abundance at time t = 1

a <- 0.01 		# attack rate
r <- 0.2 		# growth rate of prey
m <- 0.05 		# mortality rate of predators
k <- 0.1 		# conversion constant of prey into predators
n[1] <- initPrey
p[1] <- initPred
n[2] <- initPrey + (r * initPrey) - (a * initPrey * initPred)
p[2] <- initPred + (k * a * initPrey * initPred - (m * initPred))





thyme <- 3 : totalGenerations

for(t in thyme){

n[t] <- n[t-1] + (r * n[t-1]) - (a * n[t-1] * p[t-1])
p[t] <- p[t-1] + (k * a * n[t-1] * p[t-1]) - (m * p[t-1])

print(n[t])

}

PreyAbundance <- n
PredatorAbundance <- p

PreyAbundance[(is.nan(PreyAbundance))] <- 0
time <- 1:1000
length(PreyAbundance)
plot(time, PreyAbundance)




