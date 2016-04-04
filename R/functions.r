square <- function(x) {
		x*x
}

addVector <- function(c) {
	total <- 0
	for (i in c) {
		total <- total + c[i]
	}	
	print(total)
}

k <- 10
m <- square(k)

vector <- c()

for (i in 0:1000) {
	vector[i] <- i
}

addVector(vector)
