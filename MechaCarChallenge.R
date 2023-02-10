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
