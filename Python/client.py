class Client:

	def __init__(self, name, age, balance, salary):
		self.name = name
		self.age = age
		self.balance = balance
		self.salary = salary

	def printClient(self):
		print "Name: %s\nAge: %s\nBalance: %s\nSalary: %s" % (self.name, self.age, self.balance, self.salary)
