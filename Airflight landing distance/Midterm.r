

landing_DAMdata <-read.csv('D:/Assignments UC sem1/DATA Analysis Methods/Midterm/Landing (1).csv',header = TRUE)
attach(landing_DAMdata)
pairs(landing_flight_data)



cleanedData<- amelia(landing_DAMdata[2:8],m=1,p2s=0,frontend=FALSE)
landing_DAMdata[2:8] =  cleanedData$imputations$imp1


