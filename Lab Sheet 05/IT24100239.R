## 1. Import the dataset and store it in a data frame.
setwd("C:\\Users\\cheth\\OneDrive\\Desktop\\IT24100239")

Delivery_Times<-read.table("Exercise - Lab 05.txt", header=TRUE,sep = ",")


##  2. Draw a histogram
colnames(Delivery_Times) <- c("Time")
breaks_delivery <- seq(20, 70, length.out=10)  # 9 intervals
hist(Delivery_Times$Time, breaks=breaks_delivery, right=FALSE,
     main="Histogram of Delivery Times", 
     xlab="Delivery Time (minutes)", 
     col="orange", border="black")


##  3. Comment on the shape of the distribution.
# The histogram shows that the distribution of delivery times is approximately symmetric 
# and resembles a normal (bell-shaped) distribution.


##  4. Draw a cumulative frequency polygon(ogive)
freq_table_delivery <- table(cut(Delivery_Times$Time, breaks=breaks_delivery, right=FALSE))
cum_freq_delivery <- cumsum(freq_table_delivery)

plot(breaks_delivery[-1], cum_freq_delivery, type="o", col="darkgreen",
     main="Ogive (Delivery Times)", 
     xlab="Upper Class Boundaries", ylab="Cumulative Frequency")