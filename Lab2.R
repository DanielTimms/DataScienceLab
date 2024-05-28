churn = read.csv("C:\\Users\\boymo\\OneDrive\\Desktop\\Churn_Train.csv", header = TRUE)
install.packages("dlookr")
install.packages("tidyverse")
install.packages("tdlyr")
install.packages("fontquiver")

library(tidyverse)
library(fontquiver)
library(dlookr)

descriptive_stats <- describe(churn)
print(descriptive_stats)

normality_test <- normality(churn)
view(normality_test)
plot_normality(churn)

correlation_matrix <- correlate(churn)
print(correlation_matrix)
plot_correlate(churn)

categ <- target_by(churn, Internet.Service)
cat_num <- relate(categ, Tenure)
summary(cat_num)
plot(cat_num)

install.packages("vcd")
install.packages("grid")
library(vcd)
library(grid)
mosaic(Internet.Service ~ Gender, data = churn)

eda_paged_report(churn)

eda_web_report(churn)