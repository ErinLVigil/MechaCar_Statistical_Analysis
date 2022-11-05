library(dplyr)

mechaCar <- read.csv('MechaCar_mpg.csv', stringsAsFactors = F) #read the data

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle, + ground_clearance + AWD, data=mechaCar)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle, + ground_clearance + AWD, data=mechaCar)
)
