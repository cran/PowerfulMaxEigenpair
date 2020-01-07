## ---- eval = TRUE, echo = FALSE-----------------------------------------------
source("../R/powerful.maxeig.tri.R")
source("../R/powerful.seceig.tri.R")
source("../R/thomas.tri.sol.R")
source("../R/tridiag.R")

## ---- eval = FALSE, echo = TRUE-----------------------------------------------
#  require(Powerful_MaxEigenpair)

## ---- eval = FALSE, echo=TRUE, results='hold', tidy=TRUE----------------------
#  nn = c(8, 16, 50, 100, 500, 1000, 5000, 10000, 15000)
#  for (j in 1:9) {
#      a = rep(1,(nn[j] - 1))
#      b = rep(2,(nn[j]-1))
#      C = rep(3,nn[j])
#  
#      if (j <= 4){
#        print(powerful.maxeig.tri(a, b, C, digit.thresh = 6)$z[1:5])
#      }else{
#        if (j <=6){
#        print(powerful.maxeig.tri(a, b, C, digit.thresh = 6)$z[1:3])
#        }else{
#          print(powerful.maxeig.tri(a, b, C, digit.thresh = 6)$z[1:2])
#        }
#      }
#  }

## ---- eval = TRUE, echo=FALSE, results='hold', tidy=TRUE----------------------
print(c(0.253835, 0.335440, 0.342107, 0.342148, 0.342148))
print(c(0.182046, 0.215330, 0.219673, 0.219732, 0.219732))
print(c(0.171577, 0.175993, 0.176912, 0.176937, 0.176937))
print(c(0.171573, 0.172686, 0.172934, 0.172941, 0.172941))
print(c(0.171573, 0.171618, 0.171628))
print(c(0.171573, 0.171584, 0.171587))
print(c(0.171573, 0.171573))
print(c(0.171573, 0.171573))
print(c(0.171573, 0.171573))

## ---- eval = TRUE, echo=TRUE, results='hold', tidy=TRUE-----------------------
a = c(0.5142,0.2115,0.8442,0.2347,0.9837)
b = c(0.9962,0.1111,0.1405,0.7595,0.0781)
C = c(-2.334,-2.6725,-2.263,-2.8457,-2.2257,-2.1582)
maxeig=powerful.maxeig.tri(a, b, C, digit.thresh = 6)

print(maxeig$m-maxeig$z[1:5])

## ---- eval = TRUE, echo=TRUE, results='hold', tidy=TRUE-----------------------
a = as.complex(c(4*2-4i, 4*3-4i, 1-2i, 2-3i, 4+2i))
b = as.complex(c(2+1i, 3+1i, 1+2i, 2+3i, 2-1i))
C = c(2, 1, 3, 2, 4, -3)
maxeig=powerful.maxeig.tri(a, b, C, digit.thresh = 6)

print(maxeig$m-maxeig$z[1:5])

## ---- eval = TRUE, echo=TRUE, results='hold', tidy=TRUE-----------------------
a = as.complex(c(4*2-4i, 36*2-36i, 144*2-144i, 400*2-400i))
b = as.complex(c(2+1i, 32+16i, 81*2+81i, 256*2+256i))
C = c(1, 1, 1, 1, 1)
maxeig=powerful.maxeig.tri(a, b, C, digit.thresh = 6)

print(maxeig$m-maxeig$z[1:3])

## ---- eval = TRUE, echo=TRUE, results='hold', tidy=TRUE-----------------------
nn = c(8, 16, 32, 50, 100)
for (i in 1:5) {
    a = c(1:(nn[i] - 1))
    b = 2*c(1:(nn[i] - 1))
    C = c(b[1], 3*c(1:(nn[i] - 1))+2)
  
    print(powerful.maxeig.tri(a, b, C, digit.thresh = 5)$z[1:4])
}

## ---- eval = FALSE, echo=TRUE, results='hold', tidy=TRUE----------------------
#  nn = c(8, 50, 100, 500, 1000, 5000)
#  for (i in 1:6) {
#      a = c(1:(nn[i] - 1))
#      a = a*(a-1/2)*(a^2+3*a+3)
#      b = c(1:(nn[i]-1))^4
#      C = c(b[1], a[1:(nn[i] - 2)] + b[2:(nn[i] - 1)], a[nn[i] - 1] + nn[i]^4)
#  
#      print(powerful.maxeig.tri(a, b, C, digit.thresh = 6)$z[1:4])
#  }

## ---- eval = TRUE, echo=FALSE, results='hold', tidy=TRUE----------------------
print(c(0.416918, 0.627353, 0.633461, 0.633466))
print(c(0.357080, 0.541483, 0.548162, 0.548169))
print(c(0.347301, 0.526674, 0.533345, 0.533353))
print(c(0.335057, 0.507877, 0.514489, 0.514498))
print(c(0.332284, 0.503583, 0.510173, 0.510182))
print(c(0.328655, 0.497945, 0.504504, 0.504512))

## ---- eval = FALSE, echo=TRUE, results='hold', tidy=TRUE----------------------
#  nn = c(8, 100, 500, 1000, 5000, 7500, 10^4)
#  for (i in 1:7) {
#      a = c(1:(nn[i] - 1))^2
#      b = c(1:(nn[i] - 1))^2
#      C = c(b[1], a[1:(nn[i] - 2)] + b[2:(nn[i] - 1)], a[nn[i] - 1] + nn[i]^2)
#  
#      print(powerful.maxeig.tri(a, b, C, digit.thresh = 6)$z[1:4])
#  }

## ---- eval = TRUE, echo=FALSE, results='hold', tidy=TRUE----------------------
print(c(0.406762, 0.514094, 0.525176, 0.525268))
print(c(0.304993, 0.369950, 0.376269, 0.376383))
print(c(0.279999, 0.333226, 0.338230, 0.338329))
print(c(0.273336, 0.322412, 0.327148, 0.327240))
print(c(0.263220, 0.304128, 0.308454, 0.308529))
print(c(0.261484, 0.300603, 0.304845, 0.304918))
print(c(0.260397, 0.298305, 0.302489, 0.302561))

## ---- eval = TRUE, echo=TRUE, results='hold', tidy=TRUE-----------------------
nn = c(0.01, 1, 100, 10^6)
a = c(3,2,10,11)
b = c(5,4,1,6)

for (i in 1:4) {
    C = c(5, 7, 3, 16, 11 + nn[i])
    
    if (i ==1){
    print(powerful.maxeig.tri(a, b, C, digit.thresh = 9)$z[1:4])
    }
    
    if (i ==2){
    print(powerful.maxeig.tri(a, b, C, digit.thresh = 7)$z[1:4])
    }
    
    if (i >= 3){
    print(powerful.maxeig.tri(a, b, C, digit.thresh = 6)$z[1:4])
    }
}

## ---- eval = TRUE, echo=TRUE, results='hold', tidy=TRUE-----------------------
nn = c(8, 16, 50, 100, 1000, 10000, 15000)
for (j in 1:7) {
    
    a = rep(1,(nn[j] - 1))
    b = rep(2,(nn[j]-1))
    
    if (j<=5){
      print(powerful.seceig.tri(a, b, digit.thresh = 6)$z[1:4])
    }else{
      print(powerful.seceig.tri(a, b, digit.thresh = 6)$z[1:2])
    }
    
}

## ---- eval = TRUE, echo=TRUE, results='hold', tidy=TRUE-----------------------
nn = c(8, 16, 50, 100, 1000, 10000)
for (i in 1:6) {
    a = c(1:(nn[i] - 1))^2
    b = c(1:(nn[i] - 1))^2

    print(powerful.seceig.tri(a, b, digit.thresh = 6)$z[1:4])
}

## ---- eval = TRUE, echo=TRUE, results='hold', tidy=TRUE-----------------------
a = c(3,2,10,11)
b = c(5,4,1,6)

print(powerful.seceig.tri(a, b, digit.thresh = 5)$z[1:4])

