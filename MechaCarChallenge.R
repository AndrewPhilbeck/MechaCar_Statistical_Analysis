# load dplyr
library(dplyr)
# Import MechaCar_mpg.csv
MechaCar <- read.csv('MechaCar_mpg.csv')
MechaCar <- 
head(df)
# Perform linear regression using the lm() function.
# In the lm() function, pass in all six variables (i.e., columns),
# and add the dataframe you created in Step 4 as the data parameter.
mpg_reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=df)
summary(mpg_reg)

# import and read in the Suspension_Coil.csv
suspension_data <- read.csv('Suspension_Coil.csv')
# Write an RScript that creates a total_summary dataframe
# using the summarize() function to get the mean, median, variance,
# and standard deviation of the suspension coil’s PSI column.
total_summary <- summarize(suspension_data, mean(PSI), median(PSI), var(PSI), sd(PSI))
total_summary
lot_summary <- suspension_data %>% group_by(Manufacturing_Lot)  %>%
  summarize(mean(PSI), median(PSI), var(PSI), sd(PSI))
?t.test()
# One sample t-test
t.test(suspension_data$PSI, mu=1500)
# t-test with subsets
lot_1 = subset(suspension_data, Manufacturing_Lot=="Lot1")
lot_2 = subset(suspension_data, Manufacturing_Lot=="Lot2")
lot_3 = subset(suspension_data, Manufacturing_Lot=="Lot3")
# three more t-tests using subsets
t.test(subset(suspension_data, Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(suspension_data, Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(suspension_data, Manufacturing_Lot=="Lot3")$PSI, mu = 1500)
