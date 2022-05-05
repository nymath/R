wd <- 'C:/Users/17800/Desktop/随机模拟'
setwd(wd)

#1.Bronian Motion-----------------------------------------------------
#我们利用独立增量模拟布朗运动
T <- 1 #时刻
n <- 1000 #精度
B_0 <- 0 
mu <- 0 #均值
sigma <- 1 #方差

B <- function(mu,sigma,T,n){
  x <- rnorm(n,mu*(T/n),sigma*sqrt(T/n))
  ts(cumsum(x),start = 0,end = T-1/n,frequency = n)
}

#我们用B(t)代表标准布朗运动
plot(B(0,1,1,10000))


#Poisson Process------------------------------------------------------


