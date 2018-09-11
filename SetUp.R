# SetUp file for FD haemodynamics work
# Tim Dawes Sept 2018


# Load the relevant packages

packages.needed<- c("Hmisc","colorRamps","FSA","pracma","gplots","pls","sf","smoothr","rowr")
if (length(packages.needed)>1) {install.packages(packages.needed[is.na(match(packages.needed, rownames(installed.packages())))])}
lapply(packages.needed, require, character.only = TRUE)


# Set up functions

msd<- function(x) {return(list(MEAN=mean(x), SD=sd(x)))}
miqr<- function(x) {return(list(MEDIAN=median(x), IQR=quantile(x, c(0.25, 0.75))))}
calc.y<- function(x, coeffs) {return(coeffs[1]*x^3 + coeffs[2]*x^2 + coeffs[3]*x + coeffs[4])}
