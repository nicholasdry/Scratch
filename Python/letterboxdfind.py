from bs4 import BeautifulSoup
import urllib2
import sys
import time
from selenium import webdriver

topFilms = []

driver = webdriver.Firefox()
#driver.get("http://letterboxd.com/films/genre/action/")
#time.sleep(10)
#soup = BeautifulSoup(driver.page_source, "html.parser")
#topMovies = soup.findAll('img')

#for i in topMovies:
	#print(i.get('alt', ''))
#	topFilms.append(i.get('alt', ''))

for i in range(1,20):
	url = "http://letterboxd.com/films/popular/genre/action/size/small/page/" + str(i) + "/"
	driver.get(url)
	time.sleep(10)
	soup = BeautifulSoup(driver.page_source, "html.parser")
	topMovies = soup.findAll('img')
	for j in topMovies:
		#print(j.get('alt', ''))
		topFilms.append(j.get('alt', ''))
		print(j.get('alt', ''))
	print("Page {} Done".format(i))
print("Top Done")

print(len(topFilms))

cont = raw_input("Continue [y/n]")

# Now we handle each persons watchlist
myMovies = []
andyMovies = []
velzyMovies = []
justinMovies = []

print("Starting Me")
#driver.get("http://letterboxd.com/nicholasdry/films/")
#time.sleep(10)
#soup = BeautifulSoup(driver.page_source, "html.parser")
#topMovies = soup.findAll('img')

#for i in topMovies:
#	myMovies.append(i.get('alt', ''))

for i in range(1,16):
	url = "http://letterboxd.com/nicholasdry/films/page/" + str(i) + "/"
	driver.get(url)
	time.sleep(10)
	soup = BeautifulSoup(driver.page_source, "html.parser")
	topMovies = soup.findAll('img')
	for j in topMovies:
		#print(j.get('alt', ''))
		myMovies.append(j.get('alt', ''))
		print(j.get('alt', ''))
	print("Page {} Done".format(i))
# now we should have my movies
print("Me Done")

output = open("output.txt", "w")

for i in topFilms:
	if (i not in myMovies and i not in velzyMovies and i not in justinMovies and i not in andyMovies):
		print(i)
		output.write(i)
		output.write("\n")

sys.exit()

#for i in myMovies:
#	print(i)

#Now velzy
print("Starting Velzy")
#driver.get("http://letterboxd.com/velzinator/films/")
#time.sleep(10)
#soup = BeautifulSoup(driver.page_source, "html.parser")
#topMovies = soup.findAll('img')

#for i in topMovies:
	#velzyMovies.append(i.get('alt', ''))

for i in range(1,6):
	url = "http://letterboxd.com/velzinator/films/page/" + str(i) + "/"
	driver.get(url)
	time.sleep(10)
	soup = BeautifulSoup(driver.page_source, "html.parser")
	topMovies = soup.findAll('img')
	for j in topMovies:
		#print(j.get('alt', ''))
		velzyMovies.append(j.get('alt', ''))
	print("Page {} Done".format(i))

print("Velzy Done")

# Now andy
print("Starting Andy")
driver.get("http://letterboxd.com/adani3/films/")
time.sleep(10)
soup = BeautifulSoup(driver.page_source, "html.parser")
topMovies = soup.findAll('img')

for i in topMovies:
	andyMovies.append(i.get('alt', ''))

for i in range(1,9):
	url = "http://letterboxd.com/adani3/films/page/" + str(i) + "/"
	driver.get(url)
	time.sleep(10)
	soup = BeautifulSoup(driver.page_source, "html.parser")
	topMovies = soup.findAll('img')
	for j in topMovies:
		#print(j.get('alt', ''))
		andyMovies.append(j.get('alt', ''))
	print("Page {} Done".format(i))

print("Andy Done")

# Now justin
print("Starting Justin")
driver.get("http://letterboxd.com/justin_giehl/films/")
time.sleep(10)
soup = BeautifulSoup(driver.page_source, "html.parser")
topMovies = soup.findAll('img')

for i in topMovies:
	justinMovies.append(i.get('alt', ''))

for i in range(1,15):
	url = "http://letterboxd.com/justin_giehl/films/page/" + str(i) + "/"
	driver.get(url)
	time.sleep(10)
	soup = BeautifulSoup(driver.page_source, "html.parser")
	topMovies = soup.findAll('img')
	for j in topMovies:
		#print(j.get('alt', ''))
		justinMovies.append(j.get('alt', ''))
	print("Page {} Done".format(i))

print("Justin Done")

notSeen = []

output = open("output.txt", "w")

for i in topFilms:
	if (i not in myMovies and i not in velzyMovies and i not in justinMovies and i not in andyMovies):
		print(i)
		output.write(i)
		output.write("\n")
