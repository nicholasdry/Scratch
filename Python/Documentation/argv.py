# argv is always guaranteed to be greater than 1, since the program name

import sys

if len(sys.argv) > 1:
	print(sys.argv[1])
