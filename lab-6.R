############# Lab problem-6##############

X1<-c(120,115,94,118,111,102,102,131,104,107,115,139,115,114,113,105,115,134,109,109,93,118,109,106,125)
X2<-c(150,142,119,127,141,149,144,142,149,161,143,140,148,149,141,146,159,152,135,134,161,130,125,141,
148,153,145,137,147,169)


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

t<-(x1.bar-x2.bar)/sqrt(sp*(1/n1+1/n2)) # -10.46
alpha=0.05
t.tab<-qt(alpha/2, n1+n2-2)# -2.005
comment:H0 is rejected t.tab<tcal
