## PHP2514
## HW1
## Bowei Wei

library(car)
library(calibrate)

## Question 1
## input data and name the data winedb
winedb <- read.csv("wine.csv", TRUE, ",")

## Graph the data into a dot plot
plot(winedb$WINE, winedb$MORTALITY,
     #textxy = winedb$COUNTRY,
     xlab = "AVG Wine Consumption", 
     ylab = "AVG Mortality",
     main = "WINE VS MORTALITY")

## Label the dots with country names
textxy(winedb$WINE, winedb$MORTALITY, winedb$COUNTRY)

## set the linear regression and get the summary for it
mod <- lm(winedb$MORTALITY ~ winedb$WINE)
abline(mod)
summary(mod)

## log transformed graph
plot(winedb$LNWINE, winedb$LNMORTALITY,
     xlab = "Log Wine Consumption",
     ylab = "Log Mortality",
     main = "Log Transformed Wine VS Mortality")
textxy(winedb$LNWINE, winedb$LNMORTALITY, winedb$COUNTRY)
abline(lm(winedb$LNMORTALITY ~ winedb$LNWINE))



## plot with regression line
scatterplot(winedb$MORTALITY ~ winedb$WINE, 
            data = winedb, 
            xlab = "WINE Assumption", 
            ylab = "Mortality",
            main = "MORTALITY VS WINE",
            labels = winedb$COUNTRY, 
            id.method = T)

## Question 2
## read the database Flowers and name it as Flowersdb
Flowersdb <- read.csv("Flowers.csv", TRUE, ",")

## plot with regression line
scatterplot(Flowersdb$FLOWERS ~ Flowersdb$INTENS,
            data = Flowersdb)
textxy(Flowersdb$INTENS, Flowersdb$FLOWERS, Flowersdb$TIME)

mod1 <- lm(Flowersdb$FLOWERS ~ Flowersdb$INTENS)
summary(mod1)
