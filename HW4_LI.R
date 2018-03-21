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
grade <- seq(60,100)
grade
