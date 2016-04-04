# This just practices the repetition function and outputs it to a csv.

scratch <- rep("yes", times = 7600)

write.table(scratch, "repetition.csv", col.names=FALSE, row.names=FALSE)
