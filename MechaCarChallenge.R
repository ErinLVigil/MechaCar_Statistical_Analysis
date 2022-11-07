#Deliverable 1

library(dplyr)

mechaCar <- read.csv('MechaCar_mpg.csv', stringsAsFactors = F) #read the data

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle, + ground_clearance + AWD, data=mechaCar)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar)
)

#Deliverable 


suspension_coil <- read.csv('Suspension_Coil.csv', stringsAsFactors = F) #read the data

total_summary <- suspension_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), 
                                               Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI),
                                                                             Variance=var(PSI), SD=sd(PSI),.groups = 'keep')
# Deliverable 3
# All lost

t.test(suspension_coil$PSI, mu=1500)

#Lot 1
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot1")$PSI, mu=1500)

#Lot 2
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot2")$PSI, mu=1500)

#Lot 3
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot3")$PSI, mu=1500)
