########### Lab Problem-1 #########

IQ<-c(2,4,3,23,25,27,28,13,15,16,20,14,35,33,32,21,35,40,42,22,33,13,17,20,25,29,27,40,38,31)
mean(IQ)
var(IQ)
length(IQ)

#check normality
qqnorm(IQ)
qqline(IQ)

set.seed(1246)
X<-sample(IQ,10,replace=TRUE)
mean(X)
sd(IQ)

qnorm(0.025 ,0,1)

#lower class interval
21.6-((1.96*11)/sqrt(10))

#upper class interval
21.6+(1.96*11)/sqrt(10)
 95% confidence interval for population mean(14.78 ,28.41)

######## Sampling Distribution for mean
choose(30,10)
nsample<-rep(0,300000)
for (i in 1:300000){
    nsample[i]<-(mean(sample(IQ,10,replace=TRUE)))
}

hist(nsample)
mean(nsample)
bias=mean(nsample)-mean(IQ)

########## Sampling Distribution for Median 
choose(30,10)
nsample2<-rep(0,300000)
for (i in 1:300000){
     nsample2[i]<-(median(sample(IQ,10, replace=TRUE)))
}
median(IQ)
median(nsample2)
bias=median(nsample2)-median(IQ)

################## Efficiency check ################

L1<-length(nsample)
v1<-sum((nsample-mean(IQ))^2)/L1
v1

L2<-length(nsample2)
v2<-sum((nsample2-median(IQ))^2)/L2
v2
