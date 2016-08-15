from client import Client

clientList = []

name = ""
age = 0
currentBalance = 0
salary = 0

while choice != "quit":
	name = raw_input("Enter The Clients Name > ")
	age = int(raw_input("Enter The Clients Age > "))
	currentBalance = int(raw_input("Enter The Clients Current Balance > "))
	salary = int(raw_input("Enter The Clients Salary > "))
	x = Client(name, age, currentBalance, salary)
	clientList.append(x)
	choice = raw_input("Type 'quit' to end. Or press enter.")

for x in range(0, len(clientList)):
	print "-------------------"
	clientList[x].printClientInfo()
