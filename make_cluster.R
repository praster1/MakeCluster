# Made by Jaeseong Yoo (praster1@gmail.com)

n = 100					# dot 개수
n_cluster = 5		# 클러스터 개수



x=matrix(rnorm(n+2, mean=0, sd=1), n, 2)
# x=matrix(rt(n*2, df=10), n, 2)
# x=matrix(rbeta(n*2, 0.1, 0.9), n, 2)
# x=matrix(rexp(n*2, rate=1), n, 2)
# x=matrix(rpois(n*2, lambda=1), n, 2)

which=sample(1:n_cluster, n, replace=TRUE)
xmean=matrix(rnorm(n_cluster*2, sd=5), n_cluster, 2)
cluster = x + xmean[which,]


plot(cluster, type="n")
text(cluster[,1],cluster[,2], labels=which, pos=2, offset=0.25, col=which)


