#6
library(foreign)
library(MASS)

require(foreign)
require(MASS)

url<-"http://stats.idre.ucla.edu/stat/data/binary.csv"
data<-read.csv(url)
data
head(data)
str(data)
data$rank<-factor(data$rank)
data$rank
model<-glm(admit~gre+gpa+rank,data=data,family=binomial())
summary(model)
null_model<-glm(admit~1,data=data,family=binomial())
anonull_model,model,test="Chisq")
pred_prob<-predict(model,type="response")
pred_class<-ifelse(pred_prob>0.5,1,0)
table(Predicted=pred_class,Actual=data$admit)
accuracy<-mean(pred_class==data$admit)
accuracy
