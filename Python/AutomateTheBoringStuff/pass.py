# Sys needed to get command line arguments
import pyperclip
import sys

passwords = {
            # Put passwords in like this:
            '''

            'Site Name': 'Password'
            'Site Name': 'Password'

            '''

		"GitHub": "Bruh"
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
