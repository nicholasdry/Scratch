# TODO: Add in a search query.
# TODO: Add a jump count to stop potential website from continuously being jumped to.
# TODO: Favorite sites, which allow you to continue jumping on

from bs4 import BeautifulSoup
import urllib2
import time

linkCount = 0
pathCount = 0

linkList = []

userChoice = str(raw_input("Enter the website you wish to crawl > "))

site = urllib2.urlopen(userChoice)
soup = BeautifulSoup(site, "html.parser")

# Grabs the initial website to scrape for all the links
links = soup.find_all("a", href=True)

# Checks to see if they are valid links
for i in links:
	if i.get("href").startswith("mailto"):
		continue
	else: 
		linkList.append(i.get('href'))

target = int(raw_input("How many links would you like to search > "))

# We don't want to jump forever
jump = 0
for i in linkList:
	if jump == target:
		print("We have reached jump max.")
		exit()

	print("On Jump: {}, we are visiting {}".format(jump, linkList[jump]))
	
	# Since we stopped the initial mailto: links, we want to stop subsequent ones.
	if linkList[jump].startswith("mailto:"):
		continue
	else:
		attempt = 0
		
		# Watching for the most common exceptions risen during debugging.
		while attempt < 3:
			try:
				site = urllib2.urlopen(linkList[jump])
				break
			except urllib2.HTTPError:
				print("Attempting Again")
				attempt = attempt + 1
				jump = jump + 1
			except urllib2.URLError:
				attempt = 3
		
		# We don't want to add the link if we reached 3 attempts.
		if attempt == 3:
			continue
		else:
			# Now we start searching for the next links on our jumped page if we reached.
			soup = BeautifulSoup(site, "html.parser")
			links = soup.find_all("a", href=True)

			# Debugging purposes.
			print("We have found the following new links: ")
			for i in links:
				if i.get('href').startswith("htt"):
					
					# Duplicate protection since we aren't removing any links in the list
					if i.get('href') in linkList:
						continue
					else:
						print(i.get('href'))
						
						# Debugging purposes
						time.sleep(1)
						linkList.append(i.get('href'))
			
	jump = jump + 1
