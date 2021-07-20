library("tidyverse")
library("MASS")
ggplot(data=Boston, aes(x=nox,y=medv,colour=zn))+
  geom_point()+
  geom_smooth(method="lm")+
  scale_colour_viridis_c()+
  labs(x="Nitrogen oxide levels (pp10m)",
       y="House prices in 1000's (1970)",
       colour="proportion of residential lots greater than 25,000 sq.ft.",
       title="Lot size and Nitrogen oxide levels confounded.")

ggplot(data=Boston,aes(x=factor(chas,labels=c("no","yes")),y=medv))+
  geom_boxplot(outlier.shape=NA,fill="red",alpha=.25)+
  geom_jitter(alpha=.25)+
  labs(x="Close to Charles River",
       y="House prices in 1000's (1970)",
       title="Seems like people like rivers")
