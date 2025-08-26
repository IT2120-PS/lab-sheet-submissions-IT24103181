setwd("C:/Users/it24103181/Desktop/IT24103181")

Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)

hist(Delivery_Times$Delivery_Time_.minutes,
     breaks = seq(20, 70, length.out = 10) ,
     right = TRUE,                      
     col = "lightblue",
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time (minutes)",
     ylab = "Frequency")


hist_data <- hist(Delivery_Times$Delivery_Time_.minutes,
                  breaks = seq(20, 70, length.out = 10),
                  right = TRUE,
                  plot = FALSE)

cum_freq <- cumsum(hist_data$counts)      
upper_bounds <- hist_data$breaks[-1]

plot(upper_bounds, cum_freq, type = "o",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     col = "red")







