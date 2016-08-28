# Nicholas Dry
# 
import math

# N choose K
def nCr(n, r):
	return math.factorial(n)/(math.factorial(n-r)*math.factorial(r))

# N permute K
def nPr(n, r):
	return math.factorial(n)/math.factorial(n-r)


