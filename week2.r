#a
df<-data.frame(
  id=c(1,2,3,4,5,6,7,8,9,10),
  age=c(19,29,15,21,23,17,16,18,15,20),
  sleep_hrs=c(6,7,4,5,6,7,8,9,6,7),
  study_hrs=c(5,4,4,6,3,2,1,2,4,3),
  play_hrs=c(2,3,8,4,2,5,6,3,4,1),
  gender=c('F','M','M','M','F','F','F','M','M','F'),
  result=c('P','P','P','P','F','F','F','F','P','P')
)
print(df)
dim(df)
head(df)
tail(df)
tail(df,3)
head(df,3)
summary(df)
df$age
range(df$age)
sd(df$age)
var(df$age)
IQR(df$age)


#b
subset(df,result=='P')
subset(df,subset=gender=='F'&result=='P')
subset(df,subset=sleep_hrs<7)
subset(df,subset=gender=='F'& play_hrs>3)
subset(df,subset=age<18& sleep_hrs<6)
subset(df,play_hrs>5&gender=='M')
subset(df,age==20&result=='F')