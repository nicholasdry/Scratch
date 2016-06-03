# Notes:

# Dictionaries act like hash tables, especially when you have a nested list inside of a key
# Adding new keys is as simple as trying to access keys which don't exist dictionary['new key'] = ...
# Searching in a dictionary is as simple as "Key" in <dictionary name>
# Deleting values is dictionary.pop('key value')
# To return all keys inside of a dictionary, dictionary.keys()
# To return all values inside of a dictionary, dictionary.values()


directory = {
		'Client': ['Nicholas Dry']
	}

print(directory['Client'])

directory['Client'].append('Brian Dry')

print(directory['Client'])

directory['Departments'] = ['Sales']
directory['Departments'].append('Development')

print(directory)

directory.pop('Departments')

print(directory)
