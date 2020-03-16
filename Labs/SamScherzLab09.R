##Sam Scherz Lab 09 
####################

#Problem #1
###########

camData <- read.csv("Cusack_et_al_random_versus_trail_camera_trap_data_Ruaha_2013_14.csv", stringsAsFactors = F)

head(camData)

camData$DateTime

TestConversion <- camData$DateTime[1]

TestConversion

class(camData$DateTime)

##as.Date(camData$DateTime[1]) didn't do what we're looking for

?strptime

## the POSIXlt function allows you to convert objects WITHIN YOUR CHARACTER VALUE
# into numerical value

TestConversion <- as.POSIXct(TestConversion, tz = "", format,
           format = c("%d/%m/%Y %H:%M"))


head(camData)

##The first DateTime element should now be a numeric value that can be manipualted with 
#mathematical operations, but instead it is 1.4 trillion when looked at in the dataframe. Not going to work


## let's try that strptime function 

strptime(TestConversion, format = c("%d/%m/%Y %H:%M"))

TestConversion <- strptime(TestConversion, format = c("%d/%m/%Y %H:%M"))

head(camData$DateTime)
head(camData)
class(TestConversion)

TestConversion + 5

##above code is just seeing if the strptime function turned the character into a workable object. 
#Hmm, can't perfom a simple numeric operation on our new POSIXlt object. But that might make sense
# as the cycling of days and times do not follow basic mathematical counting principles. For now I'm
#going to assume that we will learn the value of converting dates/times away from character strings

DateTimeColumnConversion <- camData$DateTime

strptime(DateTimeColumnConversion, format = c("%d/%m/%Y %H:%M"))

DateTimeColumnConversion <- strptime(DateTimeColumnConversion, format = c("%d/%m/%Y %H:%M"))

class(DateTimeColumnConversion)

#Whole date/time column is now converted to POSIXlt and POSIXt


