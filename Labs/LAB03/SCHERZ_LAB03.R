# Lab Step #3
#############

## "ChipBagQuantity" and "GuestQuantity" represent the number of chip bags and guests at the party respectively 
## The values of 5 and 8 represent each quantity respectively 
ChipBagQuantity <- 5
GuestQuantity <- 8

# Lab Step #5
#############

## This variable represents the average number of chips each guest will eat on the night of the watch party 
AvGuestConsumption <- 0.4 

# Lab Step #7 
#############

## We can determine the quantity of chip bags left after the party by this calculation using our defined variables
LeftoverChipBagQuantity <- ChipBagQuantity - (GuestQuantity * AvGuestConsumption)

# LAB03 Part 2
##############
##############

#Lab Step #8
############

## This code stores each individual's Star Wars film rankings of episodes 1-9 in vectors

Self_SW_Rankings <- c( 7, 9, 8, 1, 2, 3, 4, 6, 5)
Penny_SW_Rankings <- c( 5, 9, 8, 3, 1, 2, 4, 7, 6) 
Lenny_SW_Rankings <- c( 6, 5, 4, 9, 8, 7, 3, 2, 1)
Stewie_SW_Rankings <- c( 1, 9, 5, 6, 8, 7, 2, 3, 4)

#Lab Step #9 
############

##This code stores Penny and Lenny's ranking for episode IV from the vectors containing all of their rankings

PennyIV <- Penny_SW_Rankings[4]
LennyIV <- Lenny_SW_Rankings[4]

#Lab Step #10
############

#Stored everyone's Star Wars rankings into a single data frame called "SWrankingsall"

SWrankingsall <- cbind(Self_SW_Rankings, Penny_SW_Rankings, Lenny_SW_Rankings, Stewie_SW_Rankings) 

SWrankingsall

#Lab Step #11
#############

str(PennyIV)
str(Penny_SW_Rankings)
str(SWrankingsall)

## using this string function, we are able to see that "PennyIV" has 1 numerical data point
##"Penny_SW_Rankings" has 9 data points, and "SWrankingsall" has 9x4 data points. 

#Lab Step #12 and 13
#############

SWrankingsallDataFrame <- data.frame(Self_SW_Rankings, Penny_SW_Rankings, Lenny_SW_Rankings, Stewie_SW_Rankings)
SWrankingsallASDataFrame <- as.data.frame(SWrankingsall)

#The first line of the code above creates and stores a data frame from our SW ranking vectors.
##The second line creates a data frame from 

dim(SWrankingsall)
dim(SWrankingsallDataFrame)
dim(SWrankingsallASDataFrame)

typeof(SWrankingsall)
typeof(SWrankingsallDataFrame)
typeof(SWrankingsallASDataFrame)


str(SWrankingsall)
str(SWrankingsallDataFrame)
str(SWrankingsallASDataFrame)

SWrankingsall == SWrankingsallDataFrame
    
##"SWrankingsall" is a matrix, while the other two variables are data frames. While all
##three of these objects contain the same data, they can't be used for the same command operations.
##The two data frame objects also give a full representation of all of the data in the console. 

#Lab step #14
#############

SWEpisodes <- c("I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX")

help("row.names")

#Lab step #15
#############

row.names(SWrankingsallDataFrame) <- SWEpisodes

SWrankingsallDataFrame

##This "row.names command" put the array containing the roman numeral
## episode names in the previously created data frame. 

#Lab step #16-22
#############

SWrankingsall [3,]

SWrankingsallDataFrame[,4]

SWrankingsallDataFrame[5,1]

SWrankingsallDataFrame[2,2]

SWrankingsallDataFrame[4:6,]

SWrankingsall[c(2,5,7),]

SWrankingsall[c(4,6), c(2,4)]

#Lab step #23
#############

LennyEP2Ranking <- SWrankingsall[2, 3]
SWrankingsall[2, 3] <- SWrankingsall[5,3]
SWrankingsall[5, 3] <-LennyEP2Ranking

SWrankingsall

##in these three lines of code, Lenny's score for episode 2 is stored
# as "LennyEP2Ranking" which we used in the last line to convert the episode 5
#ranking to episode 2

##Lab step #24 and 25

SWrankingsall["III", "Penny_SW_Rankings"]
SWrankingsallDataFrame["III", "Penny_SW_Rankings"]

LennyEP5Ranking <- SWrankingsall["IV","Lenny_SW_Rankings"]
SWrankingsall["IV", "Lenny_SW_Rankings"] <- SWrankingsall["II","Lenny_SW_Rankings"]
SWrankingsall["II", "Lenny_SW_Rankings"] <-LennyEP5Ranking

SWrankingsall


LennyEP2Ranking <- SWrankingsallDataFrame$Lenny_SW_Rankings[2]
SWrankingsallDataFrame$Lenny_SW_Rankings[2] <- SWrankingsallDataFrameD$Lenny_SW_Rankings[5]
SWrankingsallDataFrame$Lenny_SW_Rankings[5] <-LennyEP2Ranking

SWrankingsallDataFrame



