#Sample of 10 people for IQ

IQ_data <- 0:10

#Probability of having IQ  1SD above the mean from the sample of 10 people


x <- dbinom(IQ_data,10,0.34)  * 100 


bin <- barplot(x, names.arg = IQ_data, ylim = c(0,30), main = "Probabilities of having IQ  1 SD above the mean (n = 10, p = 0.34)", 
             xlab = "number of successes", ylab = "Probability (%)", col = "Red" )


#Vector of success rate

s_rate <- seq(0,1,by = 0.1)

#Probabilities of 8 successful outcomes depending on success rate

p_8 <- dbinom(8,10,s_rate) *100

#Plot of success rates vs probability of 8 successes

p <- plot(s_rate, p_8, ylim = c(0,30), xlab = "success rate", 
          ylab = "probability of 8 successes", col = "blue", type = 'l')


#P-value of having 8 or more successes out of 100 with success rate 0.34

p_value <- (pbinom(8,10,0.34, lower.tail = FALSE) + dbinom(8,10,0.34)) * 100


