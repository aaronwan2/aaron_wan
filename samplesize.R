#dice simulation
exp1 <- rowSums(replicate(2, sample(6, 10, replace=T)))
exp2 <- rowSums(replicate(2, sample(6, 100, replace=T)))
exp3 <- rowSums(replicate(2, sample(6, 10000, replace=T)))
#plot the data
hist(exp1)
hist(exp2)
hist(exp3)
#cumulative distribution
plot(ecdf(exp3))
#normal distribution
n <- rnorm(1000)
hist(n)


