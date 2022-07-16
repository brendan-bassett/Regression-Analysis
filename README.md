# Regression Analysis

Three exercises demonstrating regression modelling, analysis, and data visualization in R.

## 1. Production Time

In a manufacturing study, the production times for 111 recent production runs were obtained. 
The data table lists for each run the production time in hours (Y) and the production lot size (X).

Fit a regression model to the data and analyze the results.

<img alt="Production Time- Scatter Plot" width="300" height="auto" src="https://github.com/brendan-bassett/Regression-Analysis/blob/main/output/Production_Scatter.png"/>

This appears to be a non-linear relationship, likely exponential. 

<img alt="Production Time - Transformed Scatter Plot" width="300" height="auto" src="https://github.com/brendan-bassett/Regression-Analysis/blob/main/output/Production_TransformedScatter.png"/>

We use the transformation X'=sqrt(X) to convert the data into a linear one. Then we create a linear
regression model to fit the data (red line).

<img alt="Production Time - Residuals" width="300" height="auto" src="https://github.com/brendan-bassett/Regression-Analysis/blob/main/output/Production_Residuals.png"/>

The residuals appear to be symmetric about the horizontal axis, implying that the data is normally distributed.

<img alt="Production Time - Normality Distribution" width="300" height="auto" src="https://github.com/brendan-bassett/Regression-Analysis/blob/main/output/Production_QQ.png"/>

This normality distribution (Q-Q) plot clearly shows that the data is normally distributed. Here we plot the 
residuals against a normal distribution, resulting in a clear linear relationship.

## 2. Commercial Properties

A commercial real estate company evluates the age (X1), operating expenses (X2), vacancy rate (X3), 
square footage (X4), and rental rates (Y) for 81 suburban commercial properties.

Fit a multiple regression model against all predictor variables. Write out the regression equation 
and state which regression coefficients are significant at level P=0.05. Then report the value of 
the multiple R-squared and explain its meaning. Finally, display the matrices XTX and XTX^-1.

### Results:

The regression equation is    Y = -521828 + 38000*x1 + 7428*x2 + 3755*x3 + 152945*x4.

As indicated by the output from CP_summary (see below), the coefficients x0, x1, x2, x4 are significant 
at level 0.05. The coefficient x3 is not significant at level 0.05.

Also indicated by the output from CP_summary(see below), the R-squared is 0.5052998. The multiple 
R-squared is the proportion of the variance in the response variable of the regression model that 
can be explained by the variance of the predictor variables.

### Console Output (reformatted for readability)

\-\-\- CP_summary \-\-\-

Residuals:

| Min | 1Q | Median | 3Q | Max |
| --- | -- | ------ | -- | --- |
|-136314 | -55193 | -6134 | 40672 | 248457 |

Coefficients:

|   | Estimate | Std. Error | t value | Pr(>|t|) |   |
| - | -------- | ---------- | ------- | -------- | - |
| (Intercept) | -521828 | 86089 | -6.062 | 4.83e-08 | \*** |
| CP_X1 | 38000 | 6641 | 5.722 | 1.98e-07 | \*** |
| CP_X2 | 7428 | 1653 | 4.494 | 2.46e-05 | \*** |
| CP_X3 | 3755 | 4896 | 0.767 | 0.4455 | |   
| CP_X4 | 152945 | 73352 | 2.085 | 0.0404 | \* |  

\-\-\-

Signif. codes:  0 ‘\*\*\*’ 0.001 ‘\*\*’ 0.01 ‘\*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 78730 on 76 degrees of freedom
\nMultiple R-squared:  0.5053,	Adjusted R-squared:  0.4793 
\nF-statistic: 19.41 on 4 and 76 DF,  p-value: 4.902e-11

\-\-\- XTX \-\-\-

|   | CP_X1 | CP_X2 | CP_X3 | CP_X4 | CP_Y |
| - | ----- | ----- | ----- | ----- | ---- |
| CP_X1 | 2.956969e+00 | -2.854653e+00 | 1.838032e+00 | 0.01539236 | 1.004178e+05 |
| CP_X2 | -2.854653e+00 | 4.399383e+01 | 6.661995e+00 | -0.22548920 | 2.088276e+05 |
| CP_X3 | 1.838032e+00 | 6.661995e+00 | 6.672760e+00 | -0.13199315 | 1.241977e+05 |
| CP_X4 | 1.539236e-02 | -2.254892e-01 | -1.319931e-01 | 0.01810401 | 1.183316e+03 |
| CP_Y | 1.004178e+05 | 2.088276e+05 | 1.241977e+05 | 1183.31635340 | 1.190258e+10 |

\-\-\- XTX^-1 \-\-\-

|   | CP_X1 | CP_X2 | CP_X3 | CP_X4 | CP_Y |
| - | ----- | ----- | ----- | ----- | ---- |
| CP_X1  | 8.144102e-01 | 1.156737e-01 | -2.296771e-01 | -5.043997e-01 | -6.453632e-06 |
| CP_X2 | 1.156737e-01 | 4.462324e-02 | -4.937591e-02 | 1.799052e-01 | -1.261471e-06 |
| CP_X3 | -2.296771e-01 | -4.937591e-02 | 3.117807e-01 | 1.895107e+00 | -6.376961e-07 |
| CP_X4 | -5.043997e-01 | 1.799052e-01 | 1.895107e+00 | 7.342064e+01 | -2.597472e-05 |
| CP_Y  | -6.453632e-06 | -1.261471e-06 | -6.376961e-07 | -2.597472e-05 | 1.698309e-10 |


## 3. Generic Datasets

### Data 1

Fit a regression model to generic dataset "Data1.txt". Analyze the results.

<img alt="Data1 - Scatter" width="300" height="auto" src="https://github.com/brendan-bassett/Regression-Analysis/blob/main/output/Data1_Scatter.png"/>

<img alt="Data1 - Residuals" width="300" height="auto" src="https://github.com/brendan-bassett/Regression-Analysis/blob/main/output/Data1_Residuals.png"/>

<img alt="Data1 - Residuals Histogram" width="300" height="auto" src="https://github.com/brendan-bassett/Regression-Analysis/blob/main/output/Data1_ResidualsHistogram.png"/>

<img alt="Data1 - Normality Distribution" width="300" height="auto" src="https://github.com/brendan-bassett/Regression-Analysis/blob/main/output/Data1_QQ.png"/>

Conclusions: 

The variance of this data increases as X increases. That is why the 
residuals increase as x increases. However the data appears to be normally 
distributed as the residuals are symmetric about the horizontal line:
residual = 0. Looking at the histogram we can see that the data approximately 
forms a normal bell curve. However, the Q-Q plot shows us that the data points
with high residuals deviate from the normal distribution. Therefore the data 
is not fully normally distributed.


### Data 2

Fit a regression model to generic dataset "Data2.txt". Analyze the results.

<img alt="Data2 - Scatter" width="300" height="auto" src="https://github.com/brendan-bassett/Regression-Analysis/blob/main/output/Data2_Scatter.png"/>

<img alt="Data2 - Residuals" width="300" height="auto" src="https://github.com/brendan-bassett/Regression-Analysis/blob/main/output/Data2_Residuals.png"/>

<img alt="Data2 - Residuals Histogram" width="300" height="auto" src="https://github.com/brendan-bassett/Regression-Analysis/blob/main/output/Data2_ResidualsHistogram.png"/>

<img alt="Data2 - Normality Distribution" width="300" height="auto" src="https://github.com/brendan-bassett/Regression-Analysis/blob/main/output/Data2_QQ.png"/>

Conclusions:

This data is very unevenly distributed, as shown by the scatter
plot. The data is grouped somewhat tightly from x=0 to about x=45. Then at 
x>45 the data appears to be more linearly distributed. To create a meaningful 
model, the data should be divided into two sections (x<45 and x>45) and a
different model used to fit each. However in this assignment it is assumed we 
are asked to model the entire data without dividing into subsets.
 
The single linear model produced a line that is nearly horizontal about Y=190.
The residual plot clearly shows that this model is not even remotely accurate.
The distribution of residuals appears very similar to the distribution of the 
data itself, indicating that the linear model is not very useful in this case. 
The residuals are not symmetrical, so the data is not normally distributed.
The residuals histogram also shows that the data is not normally distributed, 
as it does not appear to be similar to a normal bell distribution. The Q-Q 
plot also shows that the data does not closely follow the normal line, so it 
is not normally distributed.


### Data 3

Fit a regression model to generic dataset "Data3.txt". Analyze the results.

<img alt="Data3 - Scatter" width="300" height="auto" src="https://github.com/brendan-bassett/Regression-Analysis/blob/main/output/Data3_Scatter.png"/>

<img alt="Data3 - Residuals" width="300" height="auto" src="https://github.com/brendan-bassett/Regression-Analysis/blob/main/output/Data3_Residuals.png"/>

<img alt="Data3 - Residuals Histogram" width="300" height="auto" src="https://github.com/brendan-bassett/Regression-Analysis/blob/main/output/Data3_ResidualsHistogram.png"/>

<img alt="Data3 - Normality Distribution" width="300" height="auto" src="https://github.com/brendan-bassett/Regression-Analysis/blob/main/output/Data3_QQ.png"/>

Conclusions:

This data is very widely distributed. There are many outliers in 
the upper region of the plot. Thus the residuals are nor symmetric about the 
axis: residual = 0. This means that the data is not normally distributed. The
histogram also does not have a bell-like shape, again indicating that the 
distribution is not normal. The Q-Q plot shows that there many outliers in 
both the upper and lower range, though the data towards the center appears to 
be somewhat normal.

