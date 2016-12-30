class Square:
	
	def __init__(self, width, height):
		self.width = width
		self.height = height

	def getWidth(self):
		return self.width

mySquare = Square(2, 3)

print(mySquare.getWidth())
