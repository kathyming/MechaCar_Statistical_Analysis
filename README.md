# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG
### Results
The purpose of the MechaCar analysis was to determine if there was a relationship between fuel-efficiency (mpg) and any of the other factors related to the cars (length, weight, spoiler angle, ground clearance, and all wheel drive).  After performing linear regression on the data supplied it can be concluded as follows:

* Vehicle Length: With a p-value of 2.60e-12, the null hypothesis is rejected (there is a statistically significant relationship between vehicle length and fuel-efficiency).
* Vehicle Weight: With a p-value of 0.0776, the null hypothesis must fail to be rejected (there isn't a statistically significant relationship between vehicle weight and fuel-efficiency).
* Spoiler Angle: With a p-value of 0.3069, the null hypothesis must fail to be rejected (there isn't a statistically significant relationship between spoiler angle and fuel-efficiency).
* Ground Clearance: With a p-value of 5.21e-08, the null hypothesis is rejected (there is a statistically significant relationship between ground clearance  and fuel-efficiency).
* AWD: With a p-value of 0.1852, the null hypothesis must fail to be rejected (there isn't a statistically significant relationship between AWD and fuel-efficiency).

![image](https://user-images.githubusercontent.com/106352711/190519967-d92fb196-5317-49a9-a799-1fbda8ad38f9.png)
### Slope
The slope of the linear regression analysis was 0.71 which indicates a strong correlation between the variables and fuel-efficiency. 

### Conclusion
This linear model can be used to predict mpg for MechaCar prototypes based on vehicle length and ground clearance.

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.  After analyzing the suspension coil data, it was determined that the current manufacturing data meets this design specification for all manufacturing lots in total and for lots 1 and 2 individually.  However, the variance for lot 3 individually, 170.28, does not meet this criteria.

#### Overall Summary
![total_summary](https://user-images.githubusercontent.com/106352711/191115337-01fad5a7-220f-4f85-97c9-668ebd404908.png)

#### Lot Summary
![lot_summary](https://user-images.githubusercontent.com/106352711/191115272-882f7e19-4f65-4fff-b80d-89dd1e742c7e.png)

## T-Tests on Suspension Coils
After analyzing the PSI for the different manufacturing lots I have concluded that there is no statistical difference across any of the manufacturing lots.  The p-value for each of the individual lots (1-3), compared to the overall mean was 1.  

## Study Design: MechaCar vs Competition
To further analyze the performace of MechaCar versus the competition, I would like to look at maintenance cost (upkeep).  Specifically, I would want to see if there was a correlation between miles driven and maintenance costs between MechaCar and the competition.

The Null Hypothesis would be there is not a difference between the mean maintenance costs of MechaCar and the mean maintenance costs of other cars.
The Alternate Hypotheis would be there is difference between the mean maintenance costs of MechaCar and the mean maintenance costs of other cars.

To run the test I would need a dataset that contained maintenance costs for all car types (MechaCar and non-MechaCars) for the first three years.  I would also like to have the mileage driven for each car in order to possibly help eliminate outliers (cars that were heavily driven might have very high maintenance costs and cars never driven might have very low maintance costs).

