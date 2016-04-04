vector = c()

for (i in 1:100) {
	vector[i] <- i
}

write.table(vector, "file.csv", row.names=FALSE, col.names=FALSE)
