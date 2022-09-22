############# Lab problem-3###########

H0:mu<=5
H1:mu>5

x.bar<-6.7
mu<-5
sd<-7.1
n<-29

Z<-(x.bar-mu)/(sd/sqrt(n)) # 1.28

alpha=0.05
Ztab<-qnorm(0.05,lower.tail=FALSE) # 1.64
since Ztab>Zcal ,so H0 is accepted
##p-value
pvalue<-pnorm(Z,lower.tail=FALSE)  #0.098
since pvalue>alpha so H0 is accepted

H0:mu is not equal 5
Ztab1<-qnorm(0.025) # -1.96
Ztab2<-qnorm(0.975)  # 1.96

#p-value
p.value<-2*pnorm(Z,lower.tail=FALSE) # 0.19
CI<-c(x.bar+Ztab1*sd/sqrt(n),x.bar+Ztab2*sd/sqrt(n))