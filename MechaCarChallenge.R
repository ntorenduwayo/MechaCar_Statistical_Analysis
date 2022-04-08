# Setting my active directory.
setwd("C:/Users/jpndu/Class/MechaCar_Statistical_Analysis")
# Making sure of the active directory
getwd()
## Deliverable 1: Linear Regression to Predict MPG
# Installing necessary library
library("dplyr")
library("tidyverse")
# Read in the MechaCar_MPG dataset
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) 
# Multiple linear regression model:
Linear_Reg <- lm(mpg ~ vehicle_length + vehicle_weight 
                 + spoiler_angle + ground_clearance + AWD, 
                 data = MechaCar_mpg)
## Output
Linear_Reg
#generate summary statistics
summary(Linear_Reg) 

# Deliverable 2: Create Visualizations for the Trip Analysis 
# 2. Read in the Suspension_Coil dataset
Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
# 3. Creating a total_summary dataframe using the summarize() function
total_summary <- Suspension_Coil%>%summarize(Mean = mean(PSI),
                                             Median = median(PSI),
                                             variance = var(PSI),
                                             SD = sd(PSI),
                                             .groups = 'keep')
total_summary

### box plot: PSI Whole lot
#import dataset into ggplot2
plot1 <- ggplot(Suspension_Coil,aes(y=PSI)) 
#add boxplot
plot1 + geom_boxplot() 

# 4. creating a lot_summary dataframe using the group_by() 
# and the summarize() functions
lot_summary <- Suspension_Coil%>%group_by(Manufacturing_Lot)%>%
  summarize(Mean = mean(PSI),
            Median = median(PSI),
            variance = var(PSI),
            SD = sd(PSI),
            .groups = 'keep')
lot_summary

#box plot: PSI for each individual Lot
#import dataset into ggplot2
plot2 <- ggplot(Suspension_Coil,aes(x=Manufacturing_Lot,y=PSI))
#add boxplot
plot2 + geom_boxplot()

# Deliverable 3: T-Tests on Suspension Coils                      
# 1.  using the t.test() function to determine if the PSI across ### 
## all manufacturing lots is statistically different from          #
##the population mean of 1,500 pounds per square inch.             #
####################################################################

t.test(Suspension_Coil$PSI, mu = 1500)

# 2. using the t.test() function and its subset() argument ###
## to determine if the PSI for each manufacturing lot is     #
## different from the population mean of 1,500               #
## pounds per square inch                                    #
##############################################################

lot1 <- subset(Suspension_Coil, Manufacturing_Lot == "Lot1")
lot2 <- subset(Suspension_Coil, Manufacturing_Lot == "Lot2")
lot3 <- subset(Suspension_Coil, Manufacturing_Lot == "Lot3")

t.test(lot1$PSI, mu = 1500)
t.test(lot2$PSI, mu = 1500)
t.test(lot3$PSI, mu = 1500)

# Deliverable 4: Design a Study Comparing the MechaCar to the Competition

