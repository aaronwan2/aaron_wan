death <- read.csv("/users/wana/desktop/causes_of_death.csv")
totals <- subset(death, AGE.GROUP == "All Ages")
heartdisease <- subset(totals, LEADING.CAUSES.OF.DEATH == "Heart disease")
plot(heartdisease$FATALITIES)
#This plot describes the number of fatalities due to heart disease over time 
infant <- subset(death, AGE.GROUP == "Ages 1-4" & YEAR == 1995)
plot(infant$LEADING.CAUSES.OF.DEATH, infant$FATALITIES)
#This plot shows the number of fatalities to infants ages 1-4 among various causes