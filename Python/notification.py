import os
import sys

def notify(title, subtitle, message):
	t = '-title {!r}'.format(title)
	s = '-subtitle {!r}'.format(subtitle)
	m = '-message {!r}'.format(message)
	os.system('terminal-notifier {}'.format(' '.join([m,t,s])))

notify(title = sys.argv[1], subtitle = sys.argv[2], message = sys.argv[3])
