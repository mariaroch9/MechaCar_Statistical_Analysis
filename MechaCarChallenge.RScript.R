library(dplyr) #importing library dplyr package
library(tidyverse)
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) #importing and reading file 
View (MechaCar)

lm(mpg ~ AWD  + vehicle_length + vehicle_weight + spoiler_angle +ground_clearance,data=MechaCar) #generate multiple linear regression model
summary(lm(mpg ~ AWD  + vehicle_length + vehicle_weight + spoiler_angle +ground_clearance,data=MechaCar)) #generate summary statistics


Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) #importing and reading file 
View (Suspension_Coil)
total_summary <-Suspension_Coil %>%  summarize(Mean=mean(PSI), Median=median(PSI), Variance= var(PSI), sd= sd(PSI))
Lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance= var(PSI), sd= sd(PSI), .groups = 'keep') #create summary table


t.test(Suspension_Coil$PSI,mu=mean(Suspension_Coil$PSI)) #compare the mean difference between two samples

#t-tests for individual lots
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot1"),mu=mean(Suspension_Coil$PSI))
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot2"),mu=mean(Suspension_Coil$PSI))
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot3"),mu=mean(Suspension_Coil$PSI))