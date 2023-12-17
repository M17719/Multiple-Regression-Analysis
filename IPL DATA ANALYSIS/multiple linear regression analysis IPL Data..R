mydata=read.csv(choose.files())
View(mydata)
summary(mydata)
linearmodel=lm(Auction.price~Runs+Average+Higest_score+Strike.Rate+Fifty+Four+Six,data=mydata)
summary(linearmodel)
plot(linearmodel,col="blue")
install.packages("ggplot2")
library(ggplot2)

ggplot(mydata, aes(y = Auction.price, x = Runs,))+
  geom_point() +
  labs(title = "Scatterplot of Auction.price vs Runs")

ggplot(mydata, aes(y = Auction.price, x = Average,))+
  geom_point() +
  labs(title = "Scatterplot of Auction.price vs Average")

ggplot(mydata, aes(y = Auction.price, x = Higest_score,))+
  geom_point() +
  labs(title = "Scatterplot of Auction.price vs Higest_score")

ggplot(mydata, aes(y = Auction.price, x = Strike.Rate,))+
  geom_point() +
  labs(title = "Scatterplot of Auction.price vs Strike.Rate")

ggplot(mydata, aes(y = Auction.price, x = Fifty,))+
  geom_point() +
  labs(title = "Scatterplot of Auction.price vs Fifty")

ggplot(mydata, aes(y = Auction.price, x = Four,))+
  geom_point() +
  labs(title = "Scatterplot of Auction.price vs Four")

ggplot(mydata, aes(y = Auction.price, x = Six,))+
  geom_point() +
  labs(title = "Scatterplot of Auction.price vs Six")

plot(fitted(linearmodel), sqrt(abs(resid(linearmodel))), main="Scale-Location Plot", xlab="Fitted Values",
    ylab="Square Root of Standardized Residuals")

install.packages("car")
library(car)
vif(linearmodel)

