import sys # used for sys.exit

target = raw_input("How many numbers > ")

try:
	target = int(target)
except ValueError:
	sys.exit("You must enter a number.")

ints = list()
count = 0

while count < target:
	newNum = raw_input("Please enter integer {0}:".format(count + 1))
	try:
		newNum = int(newNum)
		ints.append(newNum)
		count += 1
	except:
		print("You must enter a number.")

print("Using a for loop")
for value in ints:
	print(str(value))
