## Samuel scherz's Lab 04 
#########################
#########################

##Problem #1
############

##For the lines of code below, a sequence of 1-10 is stored as the variable "j". The for loop function prints the statement "hi" the amount of times
#as defined by the sequence, which is 10 times in this case.
  
j <- c(1:10) 


for (i in j) {
  
  print("hi", i)
  
}

##Problem #2
############
      

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

x <- (c(3,7,-2, -6, 3, 0))


##Problem #3
############

#Lines 54-56 stores our values as variables, and lines 57-60 run a for loop that multiplies the total population
#of each generation by the rate of declination for each number in the sequence. When "amount * change" is stored as "amount", 
#then the amount value updates each time the for loop runs. 

totalYears <- 7
amount <- 2000
change <- 0.95
for ( i in 1:totalYears ) {
  amount <- amount * change
  print(amount)
}

#Problem #4
###########

n <- rep(0, 12)
n[1] <- 2500
K <- 10000
r <- 0.8


for( i in 1:12) { 
  
n[i + 1]  <- (1 + r * (1- n[i]/K)) * n[i]

##re-formatted the equation because it was giving me problems in the form from the example sheet
 
print(n[i])
 
  
}


##Problem #5 
############

#5a

vec <- rep(0,18)

vec

#5b

for(i in seq(1,18)){
  
  i <- 3 * i
  
  vec <- i
  
  print(vec)
  
}

#5c 

OldVec <- rep(0,18)

NewVec <- c(1, OldVec)

NewVec

#5d



for(i in seq(2,18)){
  
 NewVec[i] <- (2 * NewVec[i-1]) + 1
 
 print(NewVec[i])
}

#Problem #6
###########

n <- 20
FibVec <- n
FibVec[1] <- 0
FibVec[2] <- 1
for(i in 3:n){
  
  FibVec[i] <- FibVec[i-1] + FibVec[i-2]
  
 print(FibVec[i-3])
}

##Problem #7
############

n <- rep(0, 12)
n[1] <- 2500
K <- 10000
r <- 0.8
time <- seq(0:11)
for(i in time) { 
  
  n[i + 1]  <- (1 + r * (1- n[i]/K)) * n[i]
  
  ##re-formatted the equation because it was giving me problems in the form from the example sheet
  
  print(n[i])
  
  
}

abundance <- n[1:12]
time

plot(abundance~time)

#output should display a graph with a logistic curve

#Problem #8
###########


