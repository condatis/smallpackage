
###testing the creation of functions with other functions####

#a- a made-up patch system to test functions

patchdata<-data.frame(xi=rnorm(25),yi=rnorm(25),Aj=2^rnorm(25))

with(patchdata, plot(xi,yi,cex=Aj))

startocc<- sample(0:1,size=25,replace=T)

with(patchdata, plot(xi,yi,cex=Aj,pch=startocc*4))

Si<-hanski.conn(patchdata=patchdata,distmat=NULL,connbefore=NULL,Pi=startocc,Pibefore=NULL,pars=list(alpha=5,R=1))


par(mfrow=c(1,2))
with(patchdata, plot(x,y,cex=Aj))

with(patchdata, plot(x,y,cex=Si))

#b - examples of the colonisation fun text that might be in the database

exprtext<-"1/(1+(yi/Si)^z)"
parstext<-"y=1.39; z=1.696"

#c - how should the function work eventually

col.funct<-function(Si,Pi,patchdata){

  Aj<-patchdata$Aj
  y=1.39; zi=1.696
  Ci<-1/(1+(y/Si)^zi)
  Ci
}

col.funct(Si=1,Pi=1,patchdata=patchdata)#runs


