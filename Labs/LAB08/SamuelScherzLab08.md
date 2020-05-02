## Samuel Scherz Lab 08 
The following script is a logistic growth function that takes an input of four variables: 

	LogisticGrowth <- function(r, k, TotalGenerations, InitialPopulationSize)
Where _r_ is the growth rate of a certain population, _k_ is the carrying capacity of the population, _TotalGenerations_ is the number of generations to be run through the function, and _InitialPopulationSize_ is the starting number of individuals in the population. 

This function runs a for-loop containing the logistic growth equation that uses the previously explained variables. It then returns a vector containing the population size for each generation, as requested in the function's _TotalGenerations_ variable. Finally, it prints a chart of _abundance_ on _generation_ to the plot window. Here's the function in it's entirety: 

		LogisticGrowth <- function(r, k, TotalGenerations,  InitialPopulationSize){
	 
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


​		 
		}
And the resulting plot from the filled out logistic growth function: 

	Abundance <- LogisticGrowth(0.8, 10000, 12, 2500)
	Abundance
![LogisticGrowth]([https://raw.githubusercontent.com/SamScherz/CompBioLabsandHomework/master/Labs/LAB08/LogisticGrowthPlot.png](https://raw.githubusercontent.com/SamScherz/CompBioLabsandHomework/master/Labs/LAB08/LogisticGrowthPlot.png))
The last lines of code define the _Generation_ and _Abundance_ variables outside of the function, and then stores them in two columns as a dataframe. This dataframe is written to a csv in my personal CompBio lab folder. 
Generation <- c(i:length(Abundance))

	Logistic_Growth_Matrix <- cbind(Generation, Abundance)
	
	Logistic_Growth_DataFrame <- data.frame(Logistic_Growth_Matrix)
	
	dim(Logistic_Growth_DataFrame)
	
	write.csv(Logistic_Growth_DataFrame, file = "/Users/Sam/Documents/EBIO4420/CompBioLabsandHomework/Labs/LAB08\\LogisticGrowthOutput.csv")

[Link to raw code](https://raw.githubusercontent.com/SamScherz/CompBioLabsandHomework/master/Labs/LAB08/SamScherzLab08.R)