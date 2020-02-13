## Samuel scherz's Lab 04 
#########################
#########################

##Problem #1
############

##For the lines of code below, a sequence of 1-10 is stored as the variable "j". The for loop function prints the statement "hi" the amount of times
#as defined by the sequence, which is 10 times in this case.
  
j <- c(1:10)

for (i in j) {
  
  print(paste("hi", i))
  
}

##Problem #2
############

#This problem is meant to make this below code easier to write using a for loop and eliminating magic numbers

print((10 + 5 -2.68) * 1)
print((10 + 5 -2.68) * 2)
print((10 + 5 -2.68) * 3)
print((10 + 5 -2.68) * 4)
print((10 + 5 -2.68) * 5)
print((10 + 5 -2.68) * 6)
print((10 + 5 -2.68) * 7)
print((10 + 5 -2.68) * 8)
      

##This improved code stores all of the problem #2 integers in the form of variables, and the print command in the for loop adds togeher
#the values and multiplies them by the week number "i" 

Week <- seq(1:8 )
PiggyBank <- 10
WeeklyAllowance <- 5 
GumExpense <- -2.68
WeeklyNetMoney <- WeeklyAllowance + GumExpense

for ( i in Week) {
  
print(paste(PiggyBank + WeeklyNetMoney * i))
  
}

##Problem #3
############
StartingGeneration <- 0
LastGeneration <- 7
InitialPopulation <- 2000
PopulationDecline <- (-0.05)
#Storing all given values in variable form, "PopulationDecline" is the percent loss of individuals from each generation

Generations <- seq(from = StartingGeneration + 1, to = LastGeneration)
# storing the sequence of 7 generations as variable "Generations"

PopulationVector <- c(InitialPopulation)
#Initial population stored as a vector

for(i in Generations) {
  
CurrentPopulation <- tail(PopulationVector,1)
#accesses the first and only object in "PopulationVector": 1

GenerationalDecline <- PopulationDecline * CurrentPopulation
#Calculates loss of

print(c(i, CurrentPopulation, GenerationalDecline))

DecliningPopulationSIZE <- CurrentPopulation + GenerationalDecline

PopulationVector <- c(PopulationVector, DecliningPopulationSIZE)
 
  
}

#Problem #4
###########

##`n[t] = n[t-1] + ( r * n[t-1] * (K - n[t-1])/K )`
# Discrete-time logistic growth equation

# **If `n[1] = 2500, K = 10000, and r = 0.8`, then what do you predict for the value of `n[12]`?**

n <- seq(1, 12)
n[1] <- 2500
K <- 10000
r <- 0.8


2500 = n[t-1] + (0.8 * n[t-1] * (10000 - n[t-1]/10000)
n[2] = 2500 + (0.8 * 2500 * (10000 - 2500/10000)
               
for (t in n) {

  
print(paste(n[2] + (r * n[2] * (K - n[2]/K)) ,t))  
  
swirl::swirl()  
  
}

##nested for loops are multiplicitave
  
