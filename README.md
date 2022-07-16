# Regression Analysis

Three exercises demonstrating regression modelling concepts in R.

## 1. Production Time

In a manufacturing study, the production times for 111 recent production runs were obtained. 
The data table lists for each run the production time in hours (Y) and the production lot size (X).

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

## 2. Generic Datasets

### Data 1

Fit a regression model to generic dataset "Data1.txt"

<img alt="Data1 - Scatter" width="300" height="auto" src="https://github.com/brendan-bassett/Regression-Analysis/blob/main/output/Data1_Scatter.png"/>

<img alt="Data1 - Residuals" width="300" height="auto" src="https://github.com/brendan-bassett/Regression-Analysis/blob/main/output/Data1_Residuals.png"/>

<img alt="Data1 - Residuals Histogram" width="300" height="auto" src="https://github.com/brendan-bassett/Regression-Analysis/blob/main/output/Data1_ResidualsHistogram.png"/>

<img alt="Data1 - Normality Distribution" width="300" height="auto" src="https://github.com/brendan-bassett/Regression-Analysis/blob/main/output/Data1_QQ.png"/>

### Data 2

Fit a regression model to generic dataset "Data2.txt"

<img alt="Data2 - Scatter" width="300" height="auto" src="https://github.com/brendan-bassett/Regression-Analysis/blob/main/output/Data2_Scatter.png"/>

<img alt="Data2 - Residuals" width="300" height="auto" src="https://github.com/brendan-bassett/Regression-Analysis/blob/main/output/Data2_Residuals.png"/>

<img alt="Data2 - Residuals Histogram" width="300" height="auto" src="https://github.com/brendan-bassett/Regression-Analysis/blob/main/output/Data2_ResidualsHistogram.png"/>

<img alt="Data2 - Normality Distribution" width="300" height="auto" src="https://github.com/brendan-bassett/Regression-Analysis/blob/main/output/Data2_QQ.png"/>

### Data 3

Fit a regression model to generic dataset "Data3.txt"

<img alt="Data3 - Scatter" width="300" height="auto" src="https://github.com/brendan-bassett/Regression-Analysis/blob/main/output/Data3_Scatter.png"/>

<img alt="Data3 - Residuals" width="300" height="auto" src="https://github.com/brendan-bassett/Regression-Analysis/blob/main/output/Data3_Residuals.png"/>

<img alt="Data3 - Residuals Histogram" width="300" height="auto" src="https://github.com/brendan-bassett/Regression-Analysis/blob/main/output/Data3_ResidualsHistogram.png"/>

<img alt="Data3 - Normality Distribution" width="300" height="auto" src="https://github.com/brendan-bassett/Regression-Analysis/blob/main/output/Data3_QQ.png"/>

## 3. Commercial Properties
