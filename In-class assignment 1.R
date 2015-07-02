#Question 1
precip <- read.csv("/Users/wana/Desktop/UNdata_precipitation.csv")
ninetynine <- subset(precip, Year==1999)
zerofive <- subset(precip, Year==2005)
t.test(ninetynine$Value,zerofive$Value)
#Question 2
plot(ddply(precip, .(Year), summarize, Average=mean(Value)))