# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![Summary_mgp_regression](https://user-images.githubusercontent.com/109319148/200133088-3f78ab97-7104-4f63-ade0-97a06c74749b.png)

After completing the multiple linear regression on our data set of 50 vehicle variations, only the vehicle length and the ground clearance have P- values that are statistically unlikely to provide random amounts of variance to the linear model. 

The intercept of the line with the MPG variable shows high correlation and could suggest that there are other variables that could also explain differences in MPG.

The slope of the line not zero and since we have have a p-value below 0.05, we can reject the null hypothesis indicating that the relationship between our variables and MPG is not explained by just random chance. 

We have some coefficients that are not statiscally relevant, as well as evidence there are probably other factors that are contributing more to help explain MPG, but we can say that this model is predicting effectively. The R-squared vallue is 0.7149 and above our threshold of 0.7 to claim that this model is effective. Adjusted R-squared is slightly below this threshold, so some refinement is likely necessary.

## Summary Statistics on Suspension Coils

![total_summary](https://user-images.githubusercontent.com/109319148/200202502-30db3354-f774-4d5b-954a-6033376be22f.png)

We are looking at some results from a test on suspension coils from our MechaCar. Our first test looks at some summary statistics. We are concerned that the variance in Pounds per square inch should not exceed 100. Looking at the summary of our entire data set, the test is passed! The variance comes in at 62.3 and well under 100. 

![lot_summary](https://user-images.githubusercontent.com/109319148/200203189-77feb2c9-c6cf-441c-8ec4-6d314c34b218.png)

When we break the data down by lot summary, we can see how generalizing data sets can be misleading. Lot 1 comes in under 1 and Lot 2 is also well within tolerance at 7.5. However, Lot 3 has a Variance of 170 and fails our threshold of 100. If we were to look only at the whole data set, we would assume all cars pass. However, it is clear that this entire lot fails when looking at the whole and probably warrants further analysis to look at skew in the variance.

## T-Tests on Suspension Coils

In this part of the analysis we are determining if mean of our MechCar data is statisically different from the population mean of 1,500 pounds per square inch for our suspension coils. We will use a one-sided T test for this analysis. Since our last analysis proved that there is quite a bit of variation in the data between manufacturing lots, we will also run t-tests on each individual lot.

![t_test_all_lots](https://user-images.githubusercontent.com/109319148/200316047-6f138ee8-7a07-497c-84a4-363c75f86a0c.png)

Looking at the t-test for all lots together, the p-value is 0.06. This is above the 0.05 level for statistical significance. We fail to reject our null hypothesis. The mean for PSI across all lots is statistically similar to the population mean of 1,500 PSI.

![t_test_lot1](https://user-images.githubusercontent.com/109319148/200318372-247b39f8-1f6c-43f9-9060-6a52fb18fd50.png)

Lot 1, as illustrated above, shows us a p-value is 1well above the level of statisical significance of 0.05. We fail to reject our null hypothesis. The mean for PSI across Lot 1 is statistically similar to the population mean of 1,500 PSI.

![t_test_lot2](https://user-images.githubusercontent.com/109319148/200318777-f1c67525-7968-49a6-9bb6-e3210554fb13.png)

For Lot 2, as shown above our p-value is 0.06 and is also above our level of statistical significance. We fail to reject our null hypothesis. The mean for PSI across Lot 2 is statistically similar to the population mean of 1,500 PSI.

![t_test_lot3](https://user-images.githubusercontent.com/109319148/200319427-05b4ef62-4a11-4e49-b61b-843e34737317.png)

For Lot 3, as we can start to guess from previous analysis, starts to show where things change. The P-value is only 0.04168. This is below our significance level of 0.05 and allows us to reject the null hypothesis. The mean for PSI across Lot 3 is NOT statistically similar to the population mean of 1,500 PSI.

## Study Design: MechaCar vs Competition

In order to understand how our MechaCar can be competitve in the field, it is important to understand how it stacks up against the competition. I would run a study that would include: cost, city and highway fuel efficiency, and safety rating.

We want to know how our car differs from the competition, so in this study, we would have a null hypthesis that there is not statistical difference between our MechaCar and competitors and an alternative hypothesis that there is a statistical difference with our new car. We would need to ensure that we are looking at similar cars, so would need to group our data sets of the competitors to include similar makes of cars to our MechaCar.

The best way to go about this would probably be using ANOVA tests, which are tesst that compares the means across a number of groups or factors. I would start with a one-way Anova and look at each factor across each competitor. If we do find statisical differences, we could probably take that  factor and break it down using t-tests like we did for the manufacturing lots to understand from where the differences are most and least significant. 

With analyis like this, we have a much better understanding of our car and how to position it in the market. It can also give our engineers more information on where improvements can still be made to get to the best possible version of our MechaCar.
