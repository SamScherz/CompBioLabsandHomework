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








