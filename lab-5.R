################# Lab Problem-5 ###########

X1<-c(12.3,11.4,14.2,15.3,14.8,13.8,11.1,15.1,15.8,13.2)
X2<-c(11.1,17.2,13.4,15.2,14.1,13.0,12.5,11.5,12.7,14.5,15.3,14.0)

S1<-sd(X1)
S2<-sd(X2)
S1/S2

par(mfrow=c(1,2))
qqnorm(X1, main=" qq plot for X1")
qqline(X1)
qqnorm(X2,main="qq plot for X2 ")
qqline(X2)

n1<-length(X1)
n2<-length(X2)
x1.bar<-mean(X1)
x2.bar<-mean(X2)
x1.var<-var(X1)
x2.var<-var(X2)
sp<-(((n1-1)*x1.var+(n2-1)*x2.var)/(n1+n2-2))

t<-(x1.bar-x2.bar)/sqrt(sp*(1/n1+1/n2)) # -0.011
alpha=0.05
t.tab<-qt(alpha/2, n1+n2-2)# -2.08

comment : H0 is accepted ,t.tab>tcal

