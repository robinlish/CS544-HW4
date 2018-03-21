# Part 1) Binomial distribution
#Suppose a pitcher in Baseball has 50% chance of getting a strike-out.Using the binomial distribution,
# a) Compute and plot the probability distribution for striking out the next 6 batters.
striking_a <- dbinom(0:6,size=6,prob=0.5)
striking_a
#plot the PMF of striking out the 6 batters
plot(0:6, striking_a, type="h",xaxt = "n",
     xlab="Times of striking out",ylab="striking_a", ylim = c(0, 0.6),main="Probability distribution of striking out (p=50%)")
abline(h=0)
points(0:6, striking_a, pch=19)
axis(side = 1, at = 0:6, labels = TRUE)

# b) Plot the CDF for the above
CDF <- pbinom(0:6, size = 6, prob = 0.5) #Calculate the CDF of striking out for 6 batters
plot(0:6, CDF, type="h",xaxt = "n",
     xlab="Times of striking out",ylab="CDF", ylim = c(0, 1),main="Cumulative distribution of striking out (p=50%)")
abline(h=0)
points(0:6, CDF, pch=19)
axis(side = 1, at = 0:6, labels = TRUE)

#c) Repeat a) and b) if the pitcher has 70% chance of getting a strike-out.
striking_c <- dbinom(0:6,size=6,prob=0.7)
striking_c
#plot the PMF of striking out the 6 batters if prob=0.7
plot(0:6, striking_c, type="h",xaxt = "n",
     xlab="Times of striking out",ylab="striking_c", ylim = c(0, 0.6),main="Probability distribution of striking out (p=70%)")
abline(h=0)
points(0:6, striking_c, pch=19)
axis(side = 1, at = 0:6, labels = TRUE)

#calculate and plot the CDF if the striking out prob is 0.7
CDF_c <- pbinom(0:6, size = 6, prob = 0.7)
plot(0:6, CDF_c, type="h",xaxt = "n",
     xlab="Times of striking out",ylab="CDF when probability is 0.7", ylim = c(0, 1),main="Cumulative distribution of striking out (p=50%)")
abline(h=0)
points(0:6, CDF_c, pch=19)
axis(side = 1, at = 0:6, labels = TRUE)

#d) Repeat a) and b) if the pitcher has 30% chance of getting a strike-out
striking_d <- dbinom(0:6,size=6,prob=0.3)
striking_d
#plot the PMF of striking out the 6 batters if prob=0.3
plot(0:6, striking_d, type="h",xaxt = "n",
     xlab="Times of striking out",ylab="striking_d", ylim = c(0, 0.6),main="Probability distribution of striking out (p=30%)")
abline(h=0)
points(0:6, striking_d, pch=19)
axis(side = 1, at = 0:6, labels = TRUE)

#calculate and plot the CDF if the striking out prob is 0.7
CDF_d <- pbinom(0:6, size = 6, prob = 0.3)
plot(0:6, CDF_d, type="h",xaxt = "n",
     xlab="Times of striking out",ylab="CDF when probability is 0.3", ylim = c(0, 1),main="Cumulative distribution of striking out (p=30%)")
abline(h=0)
points(0:6, CDF_d, pch=19)
axis(side = 1, at = 0:6, labels = TRUE)

#e) Infer from the shape of the distributions.
#When the striking-out probability is 50%, the probability of getting 3 times of striking out for the next 6 batters is the highest,
#and the probabilities of getting 0 or 6 times of striking out for the next 6 batters are equally the lowest.

#When the striking-out probability is 70%, the probability of getting 4 times of striking out for the next 6 batters is the highest,
#and the probability of getting 0 times of striking out for the next 6 batters is the lowest.

#When the striking-out probability is 30%, the probability of getting 2 times of striking out for the next 6 batters is the highest, 
#and the probability of getting 6 times of striking out for the next 6 batters is the lowest.

#Part 2) Binomial distribution 
#Suppose that 80% of the flights arrive on time. Using the binomial distribution,
#a) What is the probability that four flights will arrive on time in the next 10 flights?
n2 <- 10;p2 <- 0.8
flight_4 <- dbinom(4,size=n2,prob=p2) #calculating the PMF of 4 flights that are on time
flight_4

#b) What is the probability that four or fewer flights will arrive on time in the next 10 flights?
flight_01234 <- dbinom(0:4, size=n2,prob=p2)#calculating the PMF of 4 or fewer flights that are on time
flight_01234

#c) Compute the probability distribution for flight arriving in time for the next 10 flights.
flight_0to10 <- dbinom(0:10,size=n2,prob=p2)
flight_0to10

#d) Show the PMF and the CDF for the next 10 flights.
plot(0:10,flight_0to10,type="h",xaxt = "n",
     xlab="Numbers of flights on time",ylab="Probability", ylim = c(0, 0.5),main="Probability distribution of flights on time (p=80%)")
abline(h=0)
points(0:10, flight_0to10, pch=19)
axis(side = 1, at = 0:10, labels = TRUE)
#calculate and plot the CDF of the 10 flights on time
CDF_flight <- pbinom(0:10, size=n2,prob=p2)
plot(0:10,CDF_flight,type="h",xaxt = "n",
     xlab="Numbers of flights on time",ylab="Cumulative Probability", ylim = c(0, 1),main="Cumulative distribution of flights on time (p=80%)")
abline(h=0)
points(0:10, CDF_flight, pch=19)
axis(side = 1, at = 0:10, labels = TRUE)

#Part 3) Poisson distribution
#Suppose that on average 10 cars drive up to the teller window at your bank between 3 PM and 4 PM and the random variable has a Poisson distribution. During this time period,

#Part 4) Uniform distribution
#Suppose that your exams are graded using a uniform distribution between 60 and 100 (both inclusive).
##a) What is the probability of scoring i) 60? ii) 80? iii) 100?
dunif(60,60,100)
dunif(80,60,100)
dunif(100,60,100)
#the probabilities of scoring 60, 80 and 100 are all equal to 0.025

##b) What is the mean and standard deviation of this distribution?
grade <- seq(60,100,0.01)
grade_prob <- dunif(grade,60,100)
mean(grade_prob)
sd(grade_prob)

##c) What is the probability of getting a score of at most 70?
punif(70,60,100)

##d) What is the probability of getting a score greater than 80 (use the lower.tail option)?
punif(80,60,100,lower.tail = F)

##e) What is the probability of getting a score between 90 and 100 (both inclusive)?
punif(100,60,100)-punif(90,60,100)

#Part5) Normal distribution
#Suppose that visitors at a theme park spend an average of $100 on souvenirs. Assume that the money spent is normally distributed with a standard deviation of $10.
## a) Show the PDF of this distribution covering the three standard deviations on either side of the mean.
a5 <- seq(60,140)
pdf_a5 <- dnorm(a5, mean=100, sd=10)
plot(a5, pdf_a5, type="l", col="red",xaxt="n")
axis(side = 1, at = seq(60,140,10), 
     labels = TRUE)


## b) What is the probability that a randomly selected visitor will spend more than $120?
pnorm(120,100,10,lower.tail=F)

## c) What is the probability that a randomly selected visitor will spend between $80 and $90 (inclusive)?
pnorm(90,100,10)-pnorm(80,100,10)

## d) What are the probabilities of spending within one standard deviation, two standard deviations, and three standard deviations, respectively?
###within one sd:
pnorm(110,100,10)-pnorm(90,100,10)
###within two sd:
pnorm(120,100,10)-pnorm(80,100,10)
###within three sd:
pnorm(130,100,10)-pnorm(70,100,10)

## e) Between what two values will the middle 90% of the money spent will fall?
qnorm(0.95,100,10)
qnorm(0.05,100,10)

## f) Show a plot for 10,000 visitors using the above distribution.
plot(table(round((rnorm(10000,100,10)))),type="h",xaxt="n")
axis(side=1, at=seq(60,140,10),labels=T)

# Part6) Exponential distribution (15 points)
# Suppose your cell phone provider's customer support receives calls at the rate of 18 per hour.
## a) What is the probability that the next call will arrive within 2 minutes?

## b) What is the probability that the next call will arrive within 5 minutes?
## c) What is the probability that the next call will arrive between 2 minutes and 5 minutes (both inclusive)?
## d) Show the CDF of this distribution.
