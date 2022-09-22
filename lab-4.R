################### Lab Problem 4 #############

H0:mu>=14.6
H1:mu<14.6

mu<-14.6
data<-c(12.3,11.4,14.2,15.3,14.8,13.8,11.1,15.1,15.8,13.2)
n<-length(data)
x.bar<-mean(data)
sd.est<-sd(data)
t<-(x.bar-mu)/(sd.est/sqrt(n)) # -1.71

tab<-qt(0.01,n-1)# -2.82
pvalue.t<-pt(t,df=n-1)# 0.059
pvalue>alpha ,so H0 is accepted
boxplot(data,ylab="Hb lebel",col="gray")
qqnorm(data,main="Normal Q-Q plot of Hb level ")
qqline(data)