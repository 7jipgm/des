#'create box plot, histogram, t-test and numeric summary
#'@export
#'@param x numeric variable

ds<-function(x){
  #1 row and 2 coloums
  par(mfrow=c(1,2))
  #histogram
  hist(x,col=rainbow(30))
  #boxplot
  boxplot(x, col="blue")
  par(mfrow=c(1,1))
  #numeric summary
  data.frame(minimum=min(x),maximum=max(x),
             median=median(x), sd=sd(x), Range=max(x)-min(x))
  #one sample t-test
  test=t.test(x)
}
