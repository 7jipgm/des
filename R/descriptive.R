#'create box plot, histogram, quartile deviation and numeric summary
#'@export
#'@param x numeric variable

ds<-function(x){
  #1 row and 2 coloums
  par(mfrow=c(1,2))
  #histogram
  hist(x,col=rainbow(30), main="Histogram")
  #boxplot
  boxplot(x, col="red", main="boxplot")
  par(mfrow=c(1,1))
  #numeric summary
  data.frame(minimum=min(x),maximum=max(x),
             median=median(x), sd=sd(x), Range=max(x)-min(x), quantile(x),
            IQR(x), var(x))
}
