# Regression Analysis

Some exercises demonstrating regression modelling concepts in R.

## Production Time

In a manufacturing study, the production times for 111 recent production runs were obtained. 
The data table lists for each run the production time in hours (Y) and the production lot size (X).

<img src="https://github.com/brendan-bassett/Regression-Analysis/blob/main/output/Production%20Time%20-%20Scatter%20Plot" alt="Production Time" width="300"/>
![Production Time - Scatter Plot](https://github.com/brendan-bassett/Regression-Analysis/blob/main/output/Production%20Time%20-%20Scatter%20Plot)

This appears to be a non-linear relationship, likely exponential. 

![Production Time - Transformed Scatter Plot](https://github.com/brendan-bassett/Regression-Analysis/blob/main/output/Production%20Time%20-%20Transformed%20Scatter%20Plot)

We use the transformation X'=sqrt(X) to convert the data into a linear one. Then we create a linear
regression model to fit the data (red line).

![Production Time - Residuals](https://github.com/brendan-bassett/Regression-Analysis/blob/main/output/Production%20Time%20-%20Residuals)

The residuals appear to be symmetric about the horizontal axis, implying that the data is normally distributed.

![Production Time - Normality Distribution \(Q-Q\) Plot](https://github.com/brendan-bassett/Regression-Analysis/blob/main/output/Production%20Time%20-%20Q-Q%20Plot)

This normality distribution (Q-Q) plot clearly shows that the data is normally distributed. Here we plot the 
residuals against a normal distribution, resulting in a clear linear relationship.