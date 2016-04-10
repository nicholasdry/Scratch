# Sys needed to get command line arguments
import pyperclip
import sys

passwords = {'GitHub': 'Mustafa1'
            }

if len(sys.argv) < 2:
    print('Usage: python pass.py [account] - copy password.')
    sys.exit()

account = sys.argv[1]

if account in passwords:
    pyperclip.copy(passwords[account])
    print('Password for ' + account + ' has been copied properly.')
else:
    print('There is no account named ' + account)