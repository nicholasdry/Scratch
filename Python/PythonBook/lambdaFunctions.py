# Lambda for incrementation
def incrementor(n):
	return lambda x: x+n

two = incrementor(2)
three = incrementor(3)

print(two(3))
print(three(3))

# Lambda for summing a list

testList = [1,2,3,4,5,6,7,8,9]
print(reduce(lambda x,y: x+y, testList))
