import socket
import sys
import json

# creates the socket
sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

sock.bind((socket.gethostname(), 12343))

sock.listen(5)

(c, addr) = sock.accept()

user = c.recv(1024)

print("Connected with %s" % user)

while True:
	
	data = c.recv(1024)
	if not data:
		break
	elif data == 'kill':
		c.close()
		sys.exit()
	else:
		print("%s: %s" % (user, data))
		resp = str(raw_input('root: '))
		c.send('root: ' + resp)

