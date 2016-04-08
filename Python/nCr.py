def factorial(a):
	if a == 0:
		return 1
	return a * factorial(a - 1)

def nCr(n=6, r=5):
	return factorial(n)/(factorial(r)*factorial(n - r))

print nCr()
print nCr(8,2)
