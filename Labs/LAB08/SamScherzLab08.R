##Problem #7
############


LogisticGrowth <- function(r, k, TotalGenerations, InitialPopulationSize){
 
 time <- TotalGenerations
 Generations <- TotalGenerations
 n <- rep(0, Generations)
 n[1] <- InitialPopulationSize
  
   for(i in seq(0:time)) { 
  
  n[i + 1]  <- (1 + r * (1- n[i]/k)) * n[i]
  
  
  result <- c(n[1:Generations])
  
   }
 
 return(result)
 
 abundance <- n[1:Generations]
 GenerationNumber <- 1:Generations
 
 print(plot(abundance~GenerationNumber))

 
}

Abundance <- LogisticGrowth(0.8, 10000, 12, 2500)
Abundance

Generation <- c(i:length(Abundance))

Logistic_Growth_Matrix <- cbind(Generation, Abundance)

Logistic_Growth_DataFrame <- data.frame(Logistic_Growth_Matrix)

dim(Logistic_Growth_DataFrame)

write.csv(Logistic_Growth_DataFrame, file = "/Users/Sam/Documents/EBIO4420/CompBioLabsandHomework/Labs/LAB08\\LogisticGrowthOutput.csv")



#output should display a graph with a logistic curve