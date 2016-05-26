print("This program visualizes the following lambda expression: lambda x,y: x+y, <list name>")

numberOfItems = int(raw_input("Enter the number of items you wish to sum > "))

testNumbers = list()
count = 0

while count < numberOfItems:
	currentNumber = int(raw_input("Number {0}: ".format(count+1)))
	testNumbers.append(currentNumber)
	count += 1	

#f = reduce(lambda x,y: x + y, testNumbers)

total = 0 

for i in range(0, len(testNumbers)):
	print("x: {0}, y: {1}, x + y = {2}".format(total, testNumbers[i], total + testNumbers[i]))
	total += testNumbers[i]

print("The final output from the lambda expression is: {0}".format(total))
