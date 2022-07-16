# Regression Analysis

Four exercises demonstrating regression modelling concepts in R.

## 1. Production Time

In a manufacturing study, the production times for 111 recent production runs were obtained. 
The data table lists for each run the production time in hours (Y) and the production lot size (X).

<img src="" alt="Production Time- Scatter Plot" width="300" height="auto"/>

This appears to be a non-linear relationship, likely exponential. 

<img src="" alt="Production Time - Transformed Scatter Plot" width="300" height="auto"/>

We use the transformation X'=sqrt(X) to convert the data into a linear one. Then we create a linear
regression model to fit the data (red line).

<img src="" alt="Production Time - Residuals" width="300" height="auto"/>

The residuals appear to be symmetric about the horizontal axis, implying that the data is normally distributed.

<img src="" alt="Production Time - Normality Distribution" width="300" height="auto"/>

This normality distribution (Q-Q) plot clearly shows that the data is normally distributed. Here we plot the 
residuals against a normal distribution, resulting in a clear linear relationship.

## 2. Data 1

Fit a linear regression model to generic dataset "Data1.txt"

<alt="Data1 - Scatter" width="300" height="auto" img src=""/>

<alt="Data1 - Residuals" width="300" height="auto" img src=""/>

<alt="Data1 - Residuals Histogram" width="300" height="auto" img src=""/>

<alt="Data1 - Normality Distribution" width="300" height="auto"img src=""/>

## 3. Data 2

Fit a linear regression model to generic dataset "Data2.txt"

<alt="Data2 - Scatter" width="300" height="auto" img src=""/>

<alt="Data2 - Residuals" width="300" height="auto" img src=""/>

<alt="Data2 - Residuals Histogram" width="300" height="auto" img src=""/>

<alt="Data2 - Normality Distribution" width="300" height="auto"img src=""/>

## 4. Data 3

Fit a linear regression model to generic dataset "Data3.txt"

<alt="Data3 - Scatter" width="300" height="auto" img src=""/>

<alt="Data3 - Residuals" width="300" height="auto" img src=""/>

<alt="Data3 - Residuals Histogram" width="300" height="auto" img src=""/>

<alt="Data3 - Normality Distribution" width="300" height="auto"img src=""/>

## 5. Commercial Properties
