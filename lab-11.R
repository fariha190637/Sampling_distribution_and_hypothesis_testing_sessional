########## Lab Problem 11 ##########

X<-c(122,145,120,45,98,67,109,100,107,106,93,125,130,90,34,108,80,48,65,56)

H0: median=110
md=110
y<-sum(X>md)
n<-sum(X!=md)

p.value<-1-pbinom(y-1,n,0.5)
p.value=0.99 , alpha=0.05
## H0 is accepted
