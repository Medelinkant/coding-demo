# Coding Demo: IB516 Analytical Workflows
#
#additional info about the code useful to 
# collaborators or future self
#
# in this case, generate data and create  a figure


# Clear workspace and close all graphics devices --------------------------

rm(list = ls())
graphics.off()



# Generate some data ------------------------------------------------------

n <- 100 
m <- 2.2
b <- 1.1

x <- rnorm(n = n, mean = 0, sd = 1)  #independent variable
noise <- rnorm(n = 100, mean = 0, sd = 1)  #noise
y <- m * x + b + noise  # dependent variable

plot(x,y)


# Do linear regression ----------------------------------------------------

fit <- glm(y ~ x)



# Plot the results --------------------------------------------------------

par(mar = c(6,7,4,1))

plot(x,y,
     xlab = "Normalized velocity", 
     ylab = "Normalized\nenergy consumption")

abline(fit)

