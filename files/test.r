x <- c(2,2,0,2,1,2,1.5,2.5,3.5,3,4,3,5,3,3)
y <- c(0,1,1,3,3,4,4,5,4,4,3,3,1,1,0)
plot(x,y,type = "b",lty = 1,lwd = 4,pch = 10,cex= 1.5,main = "Merry Christmas")

rn <-function(min,max){
	return (floor(runif(1,min,max)));
}

normdis <- function(amount,mean1,sd1,diff1,diff2){
	for (i in 1:amount){
		x <- rnorm(1,mean1,sd1);
		y <- rnorm(1,(x+diff1+diff2)/2,0.7*(x+diff1-diff2)/2);
		points(x,y,col=rgb(runif(1,0,1),runif(1,0,1),runif(1,0,1)));
		points(5-x,y,col = rgb(runif(1,0,1),runif(1,0,1),runif(1,0,1)));
		}
		}

normdis(300,2.25,0.25,2.5,0);
normdis(100,1.75,0.25,2.5,4);
normdis(200,1.5,0.5,2,3);
normdis(400,1,1,1,1);
