# atomic vector intro

x <- c(1,2,3,4,5)

# runif() generates a uniform distribution (standard bell curve) kind of random number generator
# rand <- runif(20, min=0, max=100) with 20 = n
# set.seed(0) for above line

# rep()

# seq()





## Homework 04
# 01
z <- 1.1^2.2^3.3
print(z)

z <- (1.1^2.2)^3.3
print(z)

z <- 3*1.1^3+2*1.1^2+1
print(z)

# 02
## a

z <- seq(from=1,to=8, by=1)
y <- seq(from=7, to=1, by=-1)
v <- c(z,y)
print(v)

## b

z <- seq(from=1, to=5, by=1)
v <- rep(z, times=z)
print(v)

## c
z <- seq(from=1, to=5, by=1)
v <- rep(seq(from=5, to=1, by=-1), times=z)
print(v)

# 03

trigvec <- runif(2, min=1, max=14)
print(trigvec)
r <- sqrt((trigvec[1])^2+(trigvec[2]^2))
print(r)
theta <- atan(trigvec[2]/trigvec[1])
print(theta)
polarvec <- c(r,theta)
print(polarvec)

# 04
queue <- c("sheep","fox","owl","ant")
queue <- c(queue, "serpent")
queue <- queue[! queue %in% "sheep"]
queue <- append(queue, "donkey", after=0)
queue <- queue[! queue %in% "serpent"]
queue <- queue[! queue %in% "owl"]
queue <- append(queue, "aphid", after=2)
print(queue)
which(queue = "aphid")
match("aphid", queue)

# 05

v <- 1:100
v%%c(2,3,7)!=0

# Homework 05
## 1.
ndims <- runif(1, min=3, max=10)
print(ndims)
ndims <- as.integer(ndims)
print(ndims)

v <- seq(from=1, to=ndims^2)
print(v)

vmix <- sample(v)
print(vmix)

vmat <- matrix(data=vmix, nrow=ndims)
print(vmat)

tpose <- t(vmat)
print(tpose)

sum1 <- sum(tpose[1,])
print(sum1)
sum9 <- sum(tpose[ndims,])
print(sum9)
me1 <- mean(tpose[1,])
print(me1)
me9 <- mean(tpose[ndims,])
print(me9)
em <- eigen(tpose)

# what kinds of numbers are the values and vectors ?

typeof(em[1])

## 2.

v <- runif(16, min=1, max=100)
print(v)

mymatrix <- matrix(data=v, nrow=4)
print(mymatrix)

vec <- runif(100, min=1, max=100)
mylogical <- vec<=55
print(mylogical)

myletters <- sample(letters, 26)
print(myletters)

mylist <- list(mymatrix[2,2], mylogical[2], myletters[2])
print(mylist)

typeof(mylist[[1]])
typeof(mylist[[2]])
typeof(mylist[[3]])

newv <- c(mylist[[1]],mylist[[2]],mylist[[3]])
print(newv)
typeof(newv)

## 3

myunis <- runif(26, min=0, max=10)
myletters <- sample(LETTERS)
print(myletters)

df <- data.frame(myunis,myletters)
print(df)

df[sample(1:length(df[ ,"myunis"]), 4), 1] <- NA
print(df)

missing <- which(is.na(df[ ,"myunis"]))
print(missing)

df <- df[order(df$"myletters"),]
print(df)

mean(df$myunis, na.rm=TRUE)





