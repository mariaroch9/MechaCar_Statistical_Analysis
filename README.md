# Background
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on us to review the production data for insights that may help the manufacturing team.
# Purpose
1)    To perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
2)    Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
3)    Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
4)    Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.
# Linear Regression to Predict MPG
In our analysis our dependent variable (y) is mpg. Our independent variables (x1 to x6) are vehicle length, vehicle weight, spoiler angle, ground clearance and AWD.  Using multiple regression analysis, we are trying to predict the relationship between each of our independent variables on our dependent variable. 

We are looking to build a model of y = m1x1 + m2x2 + … + m6x6 + b, for all independent x variables and their m coefficients, where b is the intercept and m is the slope of the line. 

'''
/Users/Rochelle/Desktop/R/MechaCar_Statistical_Analysis/Images/Linear_Regression.png
'''
 
## Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
The coefficients that provide a non-random amount of variance to the mpg values in the dataset are the vehicle length and the ground clearance. This is determined by the Pr(>| t |) value which represents the probability that each coefficient contributes a random amount of variance to the linear model. According to our results, vehicle length and ground clearance (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model.
## Is the slope of the linear model considered to be zero? Why or why not?
The slope of the linear model will not be zero. This can be determined by looking at the Coefficients — t value.

The t-statistic is simply the coefficient divided by the standard error. In general, we want our coefficients to have large t-statistics, because it indicates that our standard error is small in comparison to our coefficient. Simply put, we are saying that the coefficient is X standard errors away from zero (In our example the vehicles length coefficient is 9.56 and ground clearance coefficient is 6.56 standard errors away from zero, which statistically, is pretty far). 

The larger our t-statistic is, the more certain we can be that the coefficient is not zero. The t-statistic is then used to find the p-value.
## Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
This model predicts the mpg of MechaCar prototypes effectively. We can determine this by observing the coefficients — Pr(>|t|) 

The p-value is calculated using the t-statistic from the T distribution. The p-value, in association with the t-statistic, helps us to understand how significant our coefficient is to the model. In practice, any p-value below 0.05 is usually deemed as significant. This means we are confident that the coefficient is not zero, meaning the coefficient does in fact add value to the model by helping to explain the variance within our dependent variable. 

In our model, we can see that the p-values for the Intercept and vehicle length and ground clearance are extremely small. This leads us to conclude that there is strong evidence that the coefficients in this model are not zero.

The coefficient codes give us a quick way to visually see which coefficients are significant to the model. To the right of the p-values, there are several asterisks (or none if the coefficient is not significant to the model). The number of asterisks corresponds with the significance of the coefficient as described in the legend just under the coefficients section. The more asterisks, the more significant.

When running a regression analysis, the null hypothesis is that there is no relationship between the dependent variable and the independent variables and the alternative hypothesis is that there is a relationship. 
Said another way, the null hypothesis is that the coefficients for all of the variables in the model are zero. The alternative hypothesis is that at least one of them is not zero. 

A p-value below 0.05 generally indicates that at least one coefficient in the model isn’t zero. In our case, our p-value is so small that we can reject our null hypothesis and conclude there is strong evidence to prove that a relationship exists between the vehicle length, ground clearance and the mpg. 

The Multiple R-squared value is most often used as one predictor to tell us what percentage of the variation within our dependent variable the independent variables are explaining. It’s important to note that the R² value (Multiple or Adjusted) is not fool-proof and shouldn’t necessarily be used alone just by virtue of how the value is calculated. For example, the Adjusted R-squared value can increase as additional predictors are added, even if they aren’t related to the dependent variable in any way. So, it must be used cautiously. 


# Summary Statistics on Suspension Coils

## Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. When we look at the variance overall, our design specifications seem to meet the criterion. An in-depth analysis of the split between manufacturing lots reveals that Lots 1 and 22 pass the criterion. However, Lot 3 has a variance of over 170 and it does not pass the 100 PSI criterion. 
'''
/Users/Rochelle/Desktop/R/MechaCar_Statistical_Analysis/Images/Variance.png
'''
'''
 /Users/Rochelle/Desktop/R/MechaCar_Statistical_Analysis/Images/Lots_variance.png
'''
 

# T-Tests on Suspension Coils

The one-sample t-test is used to determine whether there is a statistical difference between the means of a sample dataset and a hypothesized, potential population dataset. In other words, a one-sample t-test is used to test the following hypotheses:
H0: There is no statistical difference between the observed sample mean and its presumed population mean.
Ha: There is a statistical difference between the observed sample mean and its presumed population mean.

We can also use a one-sided t-test by changing our alternative hypothesis to state that our sample mean is significantly less or significantly more than our presumed population mean. 

## t-Test
The first t-test that we conducted was to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
'''
 /Users/Rochelle/Desktop/R/MechaCar_Statistical_Analysis/Images/t_test.png
'''
'''
/Users/Rochelle/Desktop/R/MechaCar_Statistical_Analysis/Images/t_test_Multiple_Lots.png

'''

## Findings: 
Assuming our significance level was the common 0.05 percent, our p-value (1) is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.

## t-Test
We conducted 2 more t-tests to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.

!


 

## Findings

Assuming our significance level was the common 0.05 percent, our p-value for lots 1 and 2 (1) is below our significance level. Therefore, we cannot reject the null hypothesis and our sample mean is significantly less or significantly more than our presumed population mean. 
However, for lot 3 our p-value is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.




# Study Design: MechaCar vs Competition

When it comes to purchasing a car, consumers are driven by factors such as cost, fuel efficiency, maintenance costs and safety rating.  

If I were to conduct a statistical study to assess the performance of MechaCar v/s its competition I would use an analysis of variance ( ANOVA )test on the fuel efficiency metric. ANOVA test is used to compare the means of a continuous numerical variable across several groups.

A one-way ANOVA is used to test the means of a single dependent variable across a single independent variable with multiple groups. For example, comparing the fuel efficiency of MechaCar v/s competition cars based on vehicle class.

We’ll answer the question:

“Is there any statistical difference in the fuel efficiency of a vehicle based on its vehicle class?”

Fuel efficiency represented by mpg is our dependent variable and vehicle class is our independent, categorical variable. We will need this data from AutosRUs as well as from the competitors to perform our ANOVA analysis. 

H0: The means of all groups (MechaCar and competitors) are equal, or µ1 = µ2 = … = µn.
Ha: At least one of the means is different from all other groups.

Looking at "Pr(>F)" column, which is the same as our p-value statistic, we can prove our hypothesis. Depending on how small our p-value is, there may be symbols on the right side that indicate which significance level the p-value is below. The smaller the p-value than our assumed 0.05 percent significance level the higher the confidence to reject the null hypothesis and accept that there is a significant difference in fuel efficiency between one vehicle class and another.  


