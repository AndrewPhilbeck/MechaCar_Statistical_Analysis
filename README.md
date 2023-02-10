# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![Linear Regression to Predict MPG](https://user-images.githubusercontent.com/115502048/218184125-f4bfd4bb-0219-4cb8-8870-9a05f3216785.png)

### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

There were three variables that provided non-random varience:
* vehicle_weight
* spoiler_angle
* AWD

### Is the slope of the linear model considered to be zero? Why or why not?

With the p-value of 5.35e-11 the slope of the linear model is not zero. The p-value is much too small.

### Does the linear model predict mpg of MechaCar prototypes effectively? Why or why not?

I do not know. The R-squared value is 0.7149 which means that roughly 71% of the time the mpg predictions will be correct. While 71% might be a high number I do not know if it is high enough to be considered an effective predictor of MechaCar prototypes. 

## Summary Statistics on Suspension Coils

![total_summary](https://user-images.githubusercontent.com/115502048/218184188-508af859-9d32-4036-b22e-f6ffd6850eef.png)

Above is the total summary for the PSI data from the suspension_coil csv file.

![lot_summary](https://user-images.githubusercontent.com/115502048/218184228-1a8c0141-bbb7-4c8a-8390-f242df97e905.png)

Above is the lot summary for the PSI data based on which manufacturing lot a vehicle came from.

### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The MechaCar suspension coils do not meet the specifications to remain under 100 pounds per square inch. While the variance for the total summary does result in 62PSI (under the requirements) when broken down by lot we see that manufacturing lot 3 has a variance of 170PSI.

## T-Test on Suspension Coils

![t-test Lot1](https://user-images.githubusercontent.com/115502048/218184277-c1aa5d10-c2a9-4325-9cdd-0594fb432216.png)

![t-test Lot2](https://user-images.githubusercontent.com/115502048/218184314-1780892f-e39b-4baa-af99-cda4870c090c.png)

![t-test Lot3](https://user-images.githubusercontent.com/115502048/218184343-0b1984f9-9ff1-4da0-8559-e8289481e8b0.png)

The only manufacturing lot where the null hypothesis should be rejected is Lot3 where the 
p-value = .041 (less than .05). Both Lot1 and Lot2 returned high p-values with Lot1 = 1 and Lot2 = .607.

## Study Design: MechaCar vs Competition

### Hypothesis

If the MechaCar provided better city and highway fuel efficiency while maintaining a horsepower equivalent with the competition consumers would purchase the MechaCar over the Competition.

### Null Hypothesis

If city and highway fuel efficiency along with maintained horsepower is not important to consumers there will be no improved sales of the MechaCar.

### Alternative Hypothesis

If city and highway fuel efficiency along with maintaining horsepower is important to consumers, we will see an increase in purchases of the MechaCar.

### Tests

We will run tests to determine fuel efficiency of the MechaCar
* City
* Highway
We will run tests to determine average horse power of the MechaCar

We will create scatter plots to see how horse power relates to fuel efficiency, for both city and highway for the MechaCar.

We will need to know the average price and sales data for the Mechcar as well.

We will repeat the above tests on the leading competition for the MechaCar (City and Highway Fuel Efficiency and Horsepower).

We will need to know the average price sales data for the leading competition as well.

Once we have collected the data we can create two data frames and create a two-sample t.test to help us see if the  if there is any correlation between fuel efficiency, horsepower and purchasing a car. 

