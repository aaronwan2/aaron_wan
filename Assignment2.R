scores <- c(90,95,89,71,73,96,87,95,107,89,96,80,97,95,102,97,
            93,101,82,83,74,91,83,98,95,111,99,120,93,84)
#1a
mean(scores)

#1b: It is unlikely that this sample mean is equal to the population mean 
#because it is a relatively small sample

#1c via plotrix package
std.error(scores)

#1d: The standard error is an estimate of how close the mean is to the true population 
#mean using the sample

#1e
t.test(scores)

#1f: In roughly 95% of all random samples taken from the population, the interval will
#include the true population mean

#2: cannot reject null hypothesis
male <- c(220.1,
          218.6,
          229.6,
          228.8,222.0,224.1,
          226.5)
female <- c(223.4,221.5,230.2,224.3,223.8,230.8)
t.test(male,female,var.e=T)

#3a Incorrect; cannot judge magnitude of effects merely by p-value
#3b Correct; the null hypothesis was rejected and therefore the treatment should have some effects
#3c Incorrect; type 1 error should be equal to significance level at 0.05
#3d Incorrect; 
#3e Correct; the p-value would be greater than alpha

#4: cannot reject null hypothesis
a <- c(248,
       236,
       269,
       254,
       249,
       251,
       260,
       245,
       239,
       255)
b <- c(380,
       391,
       377,
       392,
       398,
       374)
afixed <- 1.5*a
wilcox.test(afixed,b)

#5
#Standard error measures the precision of the sample mean compared to the population,
#while standard deviation is the measure of the variation of the entire population
dice_rolls <- sample(6, 1000, replace=T)
sample_rolls <- dice_rolls[1:100]
mean(dice_rolls)
mean(sample_rolls)
sd(dice_rolls)
std.error(sample_rolls)
