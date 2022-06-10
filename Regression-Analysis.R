# ______________________________________________________________________________

# [1] Chapter 3 (p. 151) - problem 3.18
#
# 3.18 Production time. In a manufacturing study, the production times for 111 
# recent production runs were obtained. The data table lists for each run the 
# production time in hours (Y) and the production lot size (X).

ProductionTime <- read.table('Production Time.txt', header=FALSE)
PT_X <- ProductionTime$V2
PT_Y <- ProductionTime$V1
 
#    [a] Prepare a scatter plot of the data. Does a linear relation appear 
#    adequate here? Would a transformation on X or Y be more appropriate here? Why?
#
#      A linear relation would not be adequate as this appears to be an
#      exponential relation. A transformation on X = sqrt(X) would be most 
#      appropriate as most of the data is grouped on the lower end of X. We want 
#      to distribute the X values as evenly as possible. 

plot(x =PT_X, 
     y = PT_Y, 
     xlab = "Size", 
     ylab = "Time (Hr)", 
     xlim = c(0, max(PT_X)), 
     ylim = c(0, max(PT_Y)), 
     main = "Production Time - Scatter Plot")

#    [b] Use the transformation X' = sqrt(X) and obtain the estimated linear 
#    regression function for the transformed data.

#       Transform the x-variable and fit to a linear model.

PT_X1 = sqrt(PT_X)
PT_Frame = data.frame(PT_X1, PT_Y)
PT_model = lm(PT_Y~PT_X1, data=PT_Frame)
PT_summary = summary(PT_model)
coefficients(PT_model)

#    [c] Plot the estimated regression line and the transformed data. Does the 
#    regression line appear to be a good fit to the transformed data?
#
#       Yes the regression line seems to be a good fit for this 
#       transformed data.

plot(x = PT_X1, 
     y = PT_Y, 
     xlab = "SQRT Size", 
     ylab = "Time (Hr)", 
     xlim = c(0, max(PT_X1)), 
     ylim = c(0, max(PT_Y)), 
     main = "Production Time - Transformed Scatter Plot")

#       Plot the regression line over the data.

abline(PT_model, col="red", lwd=3)

#    [d] Obtain the residuals and plot them against the fitted values. Also 
#    prepare a normal probability plot. What do your plots show?

PT_res <- resid(PT_model)

plot(x = PT_X1, 
     y = PT_res, 
     xlab ="SQRT Size", 
     ylab = "Residuals", 
     xlim = c(0, max(PT_X1)), 
     ylim = c(min(PT_res), max(PT_res)), 
     main = "Production Time - Residuals")

abline(0, 0, col="black", lty=2, lwd=1)

#       Create a Q-Q normal probability plot with a line for the standard normal.

qqnorm(PT_res,
       ylab = "Residuals", 
       xlab = "Normal Scores", 
       main = "Production Time - Q-Q Plot") 

qqline(PT_res, col="blue", lwd=1)

#       (ANSWER) This Q-Q plot shows that the data is normally distributed.

#    [e] Express the estimated regression function in the original units.

PT_summary$coefficients[ , 2]

# ______________________________________________________________________________

# [2] Refer to the data sets: "Number One", "Number Two", Number Three".
#
# For each one, obtain: 
# [i] The scatter plot
# [ii] The residual plot
# [iii] Histogram and Q-Q Plot for the residuals. 
#
# Report your findings.

# _________________________
# NUMBER ONE

# Load the data from 'Number One.txt' and fit to a linear regression model.

One <- read.table('Number One.txt', header=FALSE)
One_X <- One$V1
One_Y <- One$V2

One_Frame = data.frame(One_X, One_Y)
One_model = lm(One_Y~One_X, data=One_Frame)
One_summary = summary(One_model)
coefficients(One_model)

# [1-i] The scatter plot

#           With Least-Squares Regression Line

plot(x = One_X, 
     y = One_Y, 
     xlab = "X", 
     ylab = "Y", 
     xlim = c(0, max(One_X)), 
     ylim = c(min(One_Y), max(One_Y)), 
     main = "Number One - Scatter Plot")

abline(One_model, col="red", lwd=3)

# [1-ii] The residual plot

One_res <- resid(One_model)

plot(x = One_X, 
     y = One_res, 
     xlab ="X", 
     ylab = "Residuals", 
     xlim = c(0, max(One_X)), 
     ylim = c(min(One_res), max(One_res)), 
     main = "Number One - Residuals")

abline(0, 0, col="black", lty=2, lwd=1)

# [1-iii] Histogram and Q-Q Plot for the residuals. 

hist(One_res,
     breaks = seq(-40, 40, 5),
     xlab = "Residuals", 
     ylab = "Frequency", 
     main = "Number One - Residuals Histogram")

abline(v=0, col="black", lwd=2)

qqnorm(One_res,
       xlab = "Normal Scores", 
       ylab = "Residuals", 
       main = "Number One - Q-Q Plot") 

qqline(One_res, col="blue", lwd = 1)

# [1-report] The variance of this data increases as X increases. That is why the 
# residuals increase as x increases. However the data appears to be normally 
# distributed as the residuals are symmetric about the horizontal line:
# residual = 0. Looking at the histogram we can see that the data approximately 
# forms a normal bell curve. However, the Q-Q plot shows us that the data points
# with high residuals deviate from the normal distribution. Therefore the data 
# is not fully normally distributed.
#
# _________________________
# NUMBER TWO

Two <- read.table('Number Two.txt', header=FALSE)
Two_X <- Two$V1
Two_Y <- Two$V2

Two_Frame = data.frame(Two_X, Two_Y)
Two_model = lm(Two_Y~Two_X, data=Two_Frame)
Two_summary = summary(Two_model)
coefficients(Two_model)

# [2-i] The scatter plot

plot(x = Two_X, 
     y = Two_Y, 
     xlab = "X", 
     ylab = "Y", 
     xlim = c(0, max(Two_X)), 
     ylim = c(min(Two_Y), max(Two_Y)), 
     main = "Number Two - Scatter Plot")

abline(Two_model, col="red", lwd=3)

# [2-ii] The residual plot

Two_res <- resid(Two_model)

plot(x = Two_X, 
     y = Two_res, 
     xlab ="X", 
     ylab = "Residuals", 
     xlim = c(0, max(Two_X)), 
     ylim = c(min(Two_res), max(Two_res)), 
     main = "Number Two - Residuals")

abline(0, 0, col="black", lty=2, lwd=1)

# [2-iii] Histogram and Q-Q Plot for the residuals. 

min(Two_res)
max(Two_res)

hist(Two_res,
     breaks = seq(-700, 700, 100),
     xlab = "Residuals", 
     ylab = "Frequency", 
     main = "Number Two - Residuals Histogram")

abline(v=0, col="black", lwd=2)

qqnorm(Two_res,
       xlab = "Normal Scores", 
       ylab = "Residuals", 
       main = "Number Two - Q-Q Plot") 

qqline(Two_res, col = "blue", lwd = 1)

# [2-report] This data is very unevenly distributed, as shown by the scatter
# plot. The data is grouped somewhat tightly from x=0 to about x=45. Then at 
# x>45 the data appears to be more linearly distributed. To create a meaningful 
# model, the data should be divided into two sections (x<45 and x>45) and a
# different model used to fit each. However in this assignment it is assumed we 
# are asked to model the entire data without dividing into subsets.
# 
# The single linear model produced a line that is nearly horizontal about Y=190.
# The residual plot clearly shows that this model is not even remotely accurate.
# The distribution of residuals appears very similar to the distribution of the 
# data itself, indicating that the linear model is not very useful in this case. 
# The residuals are not symmetrical, so the data is not normally distributed.
# The residuals histogram also shows that the data is not normally distributed, 
# as it does not appear to be similar to a normal bell distribution. The Q-Q 
# plot also shows that the data does not closely follow the normal line, so it 
# is not normally distributed.
#
# _________________________
# NUMBER THREE

Three <- read.table('Number Three.txt', header=FALSE)
Three_X <- Three$V1
Three_Y <- Three$V2

Three_Frame = data.frame(Three_X, Three_Y)
Three_model = lm(Three_Y~Three_X, data=Three_Frame)
Three_summary = summary(Three_model)
coefficients(Three_model)

# [3-i] The scatter plot

plot(x = Three_X, 
     y = Three_Y, 
     xlab = "X", 
     ylab = "Y", 
     xlim = c(0, max(Three_X)), 
     ylim = c(min(Three_Y), max(Three_Y)), 
     main = "Number Three - Scatter Plot")

abline(Three_model, col="red", lwd=3)

# [3-ii] The residual plot

Three_res <- resid(Three_model)

plot(x = Three_X, 
     y = Three_res, 
     xlab ="X", 
     ylab = "Residuals", 
     xlim = c(0, max(Three_X)), 
     ylim = c(min(Three_res), max(Three_res)), 
     main = "Number Three - Residuals")

abline(0, 0, col="black", lty=2, lwd=1)

# [3-iii] Histogram and Q-Q Plot for the residuals. 

min(Three_res)
max(Three_res)

hist(Three_res,
     breaks = seq(-450, 450, 50),
     xlab = "Residuals", 
     ylab = "Frequency", 
     main = "Number Three - Residuals Histogram")

abline(v=0, col="black", lwd=2)

qqnorm(Three_res,
       xlab = "Normal Scores", 
       ylab = "Residuals", 
       main = "Number Three - Q-Q Plot") 

qqline(Three_res, col = "blue", lwd = 1)

# [3-report] This data is very widely distributed. There are many outliers in 
# the upper region of the plot. Thus the residuals are nor symmetric about the 
# axis: residual = 0. This means that the data is not normally distributed. The
# histogram also does not have a bell-like shape, again indicating that the 
# distribution is not normal. The Q-Q plot shows that there many outliers in 
# both the upper and lower range, though the data towards the center appears to 
# be somewhat normal.
#
# ______________________________________________________________________________
#
# [3] Refer to the data set "Commercial Properties" (Problem 6.18, p. 251).
# Run the multiple regression of Y on X1, X2, X3, X4.

CommercialProperties <- read.table('Commercial_Properties.txt', header=FALSE)

CP_X1 <- CommercialProperties$V1
CP_X2 <- CommercialProperties$V2
CP_X3 <- CommercialProperties$V3
CP_X4 <- CommercialProperties$V4
CP_Y <- CommercialProperties$V5

CP_Frame = data.frame(CP_X1, CP_X2, CP_X3, CP_X4, CP_Y)
CP_model = lm(CP_Y ~ CP_X1 + CP_X2 + CP_X3 + CP_X4, data=CP_Frame)
CP_summary = summary(CP_model)
coefficients(CP_model)
CP_summary

# [a] Write out the regression equation, and state which of the regression 
# coefficients are significant at level 0.05. (Use the P-values).
#
#    (ANSWER) The regression equation is:
#                   Y = -521828 + 38000*X1 + 7428*x2 + 3755*x3 + 152945*x4
#
#             The coefficients x0, x1, x2, x4 are significant at level 0.05.
#             The coefficient x3 is not significant at level 0.05.

# [b] Report the value of the multiple R2. Explain its meaning briefly.
#
#    (ANSWER) The multiple R-squared is the proportion of the variance in the 
#    response variable of the regression model that can be explained by the 
#    predictor variables.

CP_summary$r.squared

# Bonus: Display the matrices XTX and (XTX)^-1. 

XTX = cov(CP_Frame)
XTX
solve(XTX) # This is (XTX)^-1

