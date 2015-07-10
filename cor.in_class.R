m1 <- c(20,32,35,34,40,51,52,56,57,68)
m2 <- c(23,34,36,44,42,51,54,57,54,62)
plot(m1,m2)
cor(m1,m2)
cor.test(m1,m2)

SE <- sqrt((1-r^2)/length(c1) #??
m3 <- m1 + 30
m4 <- m2 + 30
cor(m3,m4)
#no change in correlation

m5 <- m1 * 100
m6 <- m2 * 100
cor(m5,m6)
#no change

range <- c(-1.3,-0.5,-0.3,0.2,0.1,0.5,1.0,0.3,.4,0.5,0.1,0.2,
           0.4,1.3,1.2,1.4,1.6,1.6,1.8,3.1)
percent <- c(4,22,0,0,11,13,17,25,24,27,29,33,33,42,33,20,19,19,25,65)
plot(percent~range)
#postive, linear, moderate-strong
abline(reg=lm(percent~range))
gg <- lm(percent~range)
t.test(range,percent)
summary(gg)

newrange <- c(-1.3,-0.5,-0.3,0.2,0.1,0.5,1.0,0.3,.4,0.5,0.1,0.2,
                .4,1.3,1.2,1.4,1.6,1.6,1.8)
newpercent <- c(4,22,0,0,11,13,17,25,24,27,29,33,33,42,33,20,19,19,25)
lm(newpercent~newrange)
#slopes are 9.955 and 6.063 