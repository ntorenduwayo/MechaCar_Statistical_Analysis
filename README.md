# MechaCar_Statistical_Analysis
## Overview of Project

## Results
##  Linear Regression to Predict MPG
### Table 1: Multiple Linear Regression Results 
![Multiple Liner Regression Output](https://user-images.githubusercontent.com/34750363/162316775-22948889-5afb-4f54-a9df-1c65e1ea07b7.png)
### Table 2: Multiple Linear Regression Summary 
![Summary_Multi_Linear_Reg](https://user-images.githubusercontent.com/34750363/162317035-7c4b2535-3dbd-452d-a87d-eb942bd03fe1.png)
According to the analysis results in the above tables, vehicle_length, and ground_clearance variables together with the intercept provided a non-random amount of variance to the mpg in the dataset. Meaning that these three variables have a significant impact on mpg. On the other hand, vehicle_weight, spoilet_angle, and AWD variables provided a random amount of variance to mpg dataset, thus they had no impact on mpg. </br>
Since, the model’s p-value is 5.35e-11 which is smaller than our assumed significant level of 0.05%. We can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.</br>
We conclude that this model predicts mpg of MechaCar prototypes effectively. Because, from the results in the above tables, the model has an R-squared of about 0.71 meaning that roughly 71% of the variability in the dependent variable (mpg) can be explained by the model. Additionally, the model has a p-value of  5.35e-11 which is smaller than our assumed significant level of 0.05%.

## Summary Statistics on Suspension Coils
### Table 3: PSI Summary Statistics
![total_summary](https://user-images.githubusercontent.com/34750363/162320310-ccdc87ae-1f78-44df-b7b8-5f0fcfc20f27.png)</br>
According to the result in the table above, PSI had a mean of 1498.78, a median of 1500 and a standard deviation of about 7.9. Since the mean and median are almost equal, we can assume that the PSI’s distribution is approximately normal.

### Table 4: PSI Summary Statistics by Lot
![lot_summary](https://user-images.githubusercontent.com/34750363/162320554-f84ee0d8-a291-4733-aa8f-faf3b15bc451.png)</br>
The manufacturing lot 1, 2, and 3 had about the same mean (1500.0, 1500.2, 1496.14 respectively) while their medians were the same, thus they are normally distributed. </br> 
The manufacturing lot 1, 2 and 3 had standard deviation of about 0.99, 2.73, and 13.05 respectively. As we can see lot 3 had a much bigger standard deviation, meaning that its data is more spread out compared to the other lots. </br>
But the data distribution in all three lots (as a whole), and for each lot individually are approximately normal. See the plot boxes bellow.

### Box plot 1: All lots as a Whole
![Rplot1](https://user-images.githubusercontent.com/34750363/162347644-3ac99539-ea07-4cc9-9817-bcd1ea73364b.png)

### Box plot 2: Individual lot
![Rplot2](https://user-images.githubusercontent.com/34750363/162347659-ad6b872b-9546-457f-8515-18bc118163d0.png)

## T-Tests on Suspension Coils
### Table 5: Three t-tests that Compare Each Manufacturing Lot Against Mean PSI Of the Population

![T_test_2](https://user-images.githubusercontent.com/34750363/162322565-064b6463-7597-4f5b-8307-0a7234c1a402.png)</br>
From the tables above, we see that the t-test’s p-values for lot 1 and 2 sample means (i.e., 1 and 0.6 respectively) against the population mean are greater than the assumed 0.05 p-value. Therefore, we do not have sufficient evidence to reject the null hypothesis (i.e., the means are the same). So, the lot 1 and lot 2 sample means are statistically similar to the population mean.
However, the t-test’s p-value for lot 3 sample mean against the population mean is less than the assumed 0.05 p-value. Therefore, we have sufficient evidence to reject the null hypothesis (i.e., the means are the same). So, the lot 3 sample mean, and the population mean are statistically different. Therefore, in this case we may have to check the coil quality, and possibly correct in shortcoming in the lot 3 manufacturing process. 

### Table 6:  T-test that Compares All Manufacturing Lots Against Mean PSI Of the Population 
![t_test_Across_All_Manuf_Lots](https://user-images.githubusercontent.com/34750363/162322962-87d862ba-34db-4a75-9f0f-b4bd13a9ba03.png)</br>
From the table above, the t-test’s p-values for all lots mean (i.e., 0.06 ) against the population mean is less than the assumed 0.05 p-value. Therefore, we have sufficient evidence to reject the null hypothesis that the means are similar. In other words, there is sufficient evidence that both means are statistically different.

## Study Design: MechaCar vs Competition.
A car Fuel consumption is an important factor in the car market, this metric is calculated by estimating the distance measured in miles that a car can travel per gallon of fuel (i.e., mpg). In retrospect, mpg is an important metric or a fact that impacts car buyers and car manufacturers alike in their decision to buy a car and making cars respectively. For most buyers, they are more likely to buy a car with a low mpg, while for the manufacturers they aspire to make cars that are fuel efficient to entice buyers and rule out competition from other car makers.</br>
Furthermore, it is important to assert that cars are categorized in many ways, such as a vehicle’s length, a vehicle’s weight, and many other ways. 
Therefore, I will use the mpg and the vehicle’s weight to study how the MechaCar perform against the competition. In the study, I will test MechaCar cars mpg classified by weight against competitors cars mpg in the same class.
#### Metric
	*MPG
#### Data
I will use mpg data sample from MechaCar and mpg data samples from the competitors. The data will be collected and classified by the car weight. The car weight will help to make sure that we compare cars in the same class. </br>
Note: The sample will be selected randomly.
#### Hypotheses
	*Null Hypothesis:
The means of all car makers including MecharCar are equal. Thus, for example if MecharCar’s mpg mean is μ_1, competitor1’s mpg mean is μ_2, and competitor2’s mpg mean is μ_3. </br>
Then, H_0:μ_1= μ_2= μ_2
	*Alternative Hypothesis: 
At least one of the means is different from all car makers.</br>
H_a:μ_i≠μ_k for some i, k Where i and k indicate unique groups.
#### Statistical Test
In this study I will use a one-way ANOVA to compare the MecharCar’s mpg sample mean, and competitor’s mpg sample mean for the cars in the same category i.e., weight. One-way ANOVA is appropriate for this study because I would like to compare the means across more than two samples, and I have a single dependent variable (i.e., mpg) and cars of the same weight made by different companies.
#### Assumptions
To run the statistical Test, I assumed that:</br>
	*The dependent variable should be numerical and continuous.</br>
	*The independent variables are categorical.</br>
	*The dependent variable is normally distributed.</br>
	*The variance among each group is similar.

