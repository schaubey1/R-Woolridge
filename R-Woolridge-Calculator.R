
library(wooldridge)
library(dplyr) 

dat<-as.data.frame(wage1) 
#Problem 1A
x <- dat[,2, drop=FALSE] #2nd column is educ
educMean<- colMeans(x) #find mean
highesteduc <- max(x) #find highest years of education
lowest <- min(x) #find lowest years of education

######PRINT results for Problem 1A
paste("Mean of education sample:",educMean)
paste("Highest years of education:", highesteduc)
paste("Lowest years of education: ", lowest)

#Problem 1B
y<- dat[,1, drop=FALSE] #1st column is wages
######PRINT results for problem 1B.
wageMean <- colMeans(y)

######PRINT results for Problem 1B
paste("Average hourly wage in sample: $", round(wageMean, digits=3))

#Problem 1C/D 
CPI1 <- 56.9 #1976 CPI
CPI2 <- 233.0 #2013 CPI
CPIdiv= CPI2/CPI1 #divide CPI
Dollars= wageMean * CPIdiv #multiply against average wage

######PRINT results for Problem 1D
paste("In 2013 dollars, the mean wage is equivalent to: $", Dollars)

######Problem 1E
z <- dat[,6, drop=FALSE] #Column 6 is for females, take sum of this.
fem<-colSums(z)
male<- 526-fem #526 in total observations
#####PRINT results for Problem 1E
paste("There are: ",fem, "women in the dataframe." )
paste("There are ", male, "men in the dataframe.")

#PROBLEM 2
#2A
dat2<-as.data.frame(wage2)
salary <- dat2[,1, drop=FALSE]
salarymean<-colMeans(salary)
iq <- dat2[,3, drop=FALSE]
iqmean<-colMeans(iq)
######PRINT RESULTS AND CALCULATE SD OF IQ
paste("The mean of the salaries (wages/wonthly earnings): $", round(salarymean, digits=3))
paste("The mean IQ: ",iqmean)
paste("The SD of IQ is: ",sd(as.matrix(iq),na.rm=TRUE))#calculate and print SD

#2B
model <- lm(wage ~ IQ, data = dat2) #calculate linear regression equation
#PRINT Coefficients using array position.
paste("Using: Y= a + bX") 
paste("Our regression equation is: wages=",round(model$coefficients[1],digits=2),"+",round(model$coefficients[2],digits=2),"IQ")
paste("Using 15 IQ points: $",model$coefficients[1]+ model$coefficients[2]*15)
#2C
model2 <- lm(lwage ~ IQ, data = dat2) #calculate linear regression equation
#PRINT Coefficients using array position.
paste("Our new part C regression equation is: wages=",round(model2$coefficients[1],digits=2),"+",round(model2$coefficients[2],digits=5),"IQ")
paste("Using 15 IQ points: $",model2$coefficients[1]+ model2$coefficients[2]*15)
paste("Percentage increase in wage: ", 100*model2$coefficients[2]*15,"%")

