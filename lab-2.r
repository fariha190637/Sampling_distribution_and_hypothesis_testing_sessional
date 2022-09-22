################## Lab Problem-2##################
S<- 2:12
A<-c(1:6,5:1)
PS<-c(1:6,5:1)/36
ES<-sum(S*PS)
vars<-sum((S-c(ES))^2*PS)

#####plot distribution of S######
barplot(PS,
         ylim=c(0,0.2),
         ylab="Probability",
         xlab="S",
         col="Steelblue",
         space=0,
         main="Sum of  two dice rolls ")

##########Plot distribution of D ##########
probability<-rep(1/6,6)
names(probability)<- 1:6

barplot(probability,
        ylim=c(0,0.2),
        xlab="D",
        col="Steelblue",
        space=0,
        main="Outcomes of a single dice roll")