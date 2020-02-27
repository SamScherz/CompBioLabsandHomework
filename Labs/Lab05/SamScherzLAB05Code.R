##Sam Scherz Chapter 05 Code 

#Problem #1
###########

x <- 60

if(x > 5){
  
  print("Larger than 5")
  
  
} else print("Smaller than 5")

 # Self Explanatory

#Problem #2
###########

read.csv("ExampleData.csv")

#2a

ExampleDataValues <- read.csv("ExampleData.csv")$x

## ^ Stores the sole dataframe variable "x" as "ExampleValues"


for(i in 1:2024){
  
  if(ExampleDataValues[i] < 0) {
    
    
    ExampleDataValues[i] <- NA
   
  }
    print(ExampleDataValues)
    
}

## Within this for loop, the if statement declares that all data values in "Example Data Values"
#less than 0 will be replaced by NA in the line of code under the initial if statement.
#The modified data frame is then printed to the console


#2b 

 ExampleDataValues[is.na(ExampleDataValues)] <- NaN

 ExampleDataValues
 
#converts all values of "Na" to "NaN'
 
 #2c
 
 ExampleDataValues[which(is.nan(ExampleDataValues))] <- 0

## This code locates the positions of all elements in ExampleData.csv
# that are NaN using the which function, and replaces them with value 0.
 
 ExampleDataValues
 
 #2d
 
FiftyToOneHundredLength <- length(which(ExampleDataValues >= 50 & ExampleDataValues <= 100))

#The output of this line of code is the number of elements in ExampleData.csv that have a value
# between 50 and 100.

#2e

FiftyToOneHundred <- rep(0, FiftyToOneHundredLength)

FiftyToOneHundred <- ExampleDataValues[ExampleDataValues >=50 & ExampleDataValues <= 100]

FiftyToOneHundred

## The first line of code creates an empty vector the length of all "ExampleDataValues"
## between 50 and 100, and then stores the data from the second line of code immediately
#into the pre-allocated vector. 

#2f 

write.csv(FiftyToOneHundred, "/home/sam/Documents/Courses/EBIO4420/CompBioHomeworkAndLabs/Labs/Lab05/FiftyToOneHundred.csv", row.names = F)

#converts FitftyToOneHundred vector into a csv stored in my class files.

#Problem #3
###########

#3a 

#Imported dataset via Environment window in R-Studio

CO2_data_cut_paste <- read.csv("CO2_data_cut_paste.csv")

GasEmissionsData <- CO2_data_cut_paste$Gas

Year <- CO2_data_cut_paste$Year

GasPerYear <- cbind(Year, GasEmissionsData)

GasPerYear

FirstCO2RecordingYear <- head(GasPerYear[which(GasEmissionsData > 0)], n = 1)

FirstCO2RecordingYear

## Proud of these lines of code. I extracted the year and gas columns from the CO2 data sheet, and then used the columns to create a [263, 2] dimension matrix. 
# I then used the "which" function combined with the "head" function to list the first row in which the gas emissions were greater than 0. 


#"FirstCO2RecordingYear" gives the first year in which gas emissions were recorded. 

#3b 

TotalEmissions <- CO2_data_cut_paste$Total

TotalPerYear <-cbind(Year, TotalEmissions)

YearsBtwn200And300 <- (TotalPerYear[which(TotalEmissions >= 200 & TotalEmissions <= 300)])

YearsBtwn200And300

##YearsBtwn200and300 should list the years in which total emissions were between 200 and 300

# Part 2
########

totalGenerations <- 1000
n <- rep(0, totalGenerations) #n is the empty vector used for storing the results of the prey
                              #abundance equation in the below for loop
p <- rep(0, totalGenerations) #p is the empty vector used for storing the results of the
                              #predator abundance equation in the below for loop
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


##Storing the first two elements of the prey and predator abundance vectors so that the [i - 1]
# part of the below for loop has something to work with


time <- 3 : totalGenerations #starting the time at 3 so the for loop can run

for(t in time){

n[t] <- n[t-1] + (r * n[t-1]) - (a * n[t-1] * p[t-1])
p[t] <- p[t-1] + (k * a * n[t-1] * p[t-1]) - (m * p[t-1])
  
 print(n[t]) 
 print(p[t])
}
##This for loops calculates predator and prey abundances using the Lotka-Volterra model,
#then prints the results to the console

n <- n[ n >= 0 & n <= 1000]
n <- n[!is.na(n)]
p <- p[ p >= 0 & p <= 1000]
p <- p[!is.na(p)]
p <- p[-307:-579]
length(p)

## These above lines of code essentially limit the results of the for loop (n[t] and p[t])
#to values between 0 and 1000 to make real world sense. the second to last line of code in this
#chunk cuts the predator abundance output (p) to match the length of the prey abundance output (n)

PreyAbundance <- n
PredatorAbundance <- p

TimeStep <- 1:306 #the "time" sequence from above should not be used to plot "PredatorAbundance"
# and "PreyAbundance" because it is no longer the same length as the two vectors. 
length(TimeStep)
length(PreyAbundance) == length(PredatorAbundance) # Used length() command to make sure vectors were of the same length for plotting
plot(TimeStep, PreyAbundance, 
     col = "red", 
     type = "l",
     ylab = "Predator And Prey Abundance (# of Individuals)",
     xlab = "Generation #",
     main = "Lotka-Volterra Model",
    )
lines(TimeStep, PredatorAbundance, col= "green")

     legend("topleft", legend=c("Prey Abundance", "Predator Abundance"),
           col=c("red", "blue"), lty=1:2, cex=0.8)
     
##Plots the Lotka-Volterra Model
     
MyResults <- matrix(data = NA, nrow = 306, ncol = 3)

#Creation of empty matrix 
  
MyResults[ , 1] <- TimeStep
MyResults[ , 2] <- PreyAbundance
MyResults[ , 3] <- PredatorAbundance

MyResults

#Stores the three variables used in the plot as columns 1, 2, and 3 in MyResults

write.csv(x = MyResults, file = "PredPreyResults.csv")




