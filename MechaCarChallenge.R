# Module 15

# Deliverable 1
# Load the dplyr package
library(dplyr)

# Read in the MechaCar.csv file as a dataframe
car <- read.csv(file="MechaCar_mpg.csv", check.names=F, stringsAsFactors = F)

# Perform linear regression on the data
lm(mpg ~ vehicle_length + vehicle_weight + 
      spoiler_angle + ground_clearance + AWD, data=car)

# Determine p-value and r-squared value for teh linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + 
             spoiler_angle + ground_clearance + AWD, data=car))

# Deliverable 2
# Read in the Suspension_coil.csv file as a dataframe
coil <- read.csv(file="Suspension_coil.csv", check.names = F, stringsAsFactors = F)

# Create a dataframe with the mean, median, variance, and std. dev or PSI
total_summary <- coil %>% summarize(Mean = mean(PSI), Median = median(PSI), 
                                    Variance = var(PSI), SD = sd(PSI))

# Create a dataframe with the mean, median, variance, and std. dev of PSI by lot
lot_summary <- coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), 
          Median = median(PSI),Variance = var(PSI), SD = sd(PSI))

# Deliverable 3
# Determine if the PSI across all lots is statistically different from pop mean 
# of 1,500 PSI
t.test(log10(coil$PSI), mu=mean(log10(coil$PSI)))

# PSI in Lot 1 vs Mean for all lots
t.test(log10(subset(coil, Manufacturing_Lot = Lot1, select = PSI)), mu=mean(log10(coil$PSI)))

# PSI in Lot 2 vs Mean for all lots
t.test(log10(subset(coil, Manufacturing_Lot = Lot2, select = PSI)), mu=mean(log10(coil$PSI)))

# PSI in Lot 3 vs Mean for all lots
t.test(log10(subset(coil, Manufacturing_Lot = Lot3, select = PSI)), mu=mean(log10(coil$PSI)))
       