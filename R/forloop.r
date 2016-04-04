# This file simply initiates a for loop, runs through a set of values and appends them into a vector, then finally places them into a .csv

vector = c()

for (i in 1:100) {
	vector[i] <- i
}

write.table(vector, "file.csv", row.names=FALSE, col.names=FALSE)
