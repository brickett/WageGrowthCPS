### Wage Growth Calculated from CPS Data ###

## Setup ##
library(haven)

# set directory to GitHub repo
setwd("C:/Users/bjr21/Documents/GitHub/WageGrowthCPS")

## Import Dataset ##
wages <- read_sas("cps_00020.sas7bdat")

# Screen for those with eligible employment data
wages <- subset(wages, wages$ELIGORG == 1)
wages <- subset(wages, wages$EARNWEEK != 9999.99 | wages$HOURWAGE != 99.99) #cleans out data points where both hourly and weekly wages are not known



