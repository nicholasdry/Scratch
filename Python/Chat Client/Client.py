import socket
import sys

s = socket.socket()

user = str(raw_input('Chat Username: '))

s.connect(("kill.cs.rutgers.edu", 12343))
s.send(user)

while True:

	sys.stdout.write('%s: ' % user)

	s.send(str(raw_input()))
	
	print(s.recv(1024))		
