import sys							# Accesses Sys.argv

argument = sys.argv[1].split()					# Breaks up the argument in quotes

info = [[w.upper(), w.lower(), len(w)] for w in argument]	# Then generates the following information for each of the members

for i in info:							# Runs through the list and prints it out accordingly
	print(i)
