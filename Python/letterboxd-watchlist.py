from bs4 import BeautifulSoup
import urllib2

url = urllib2.urlopen("http://letterboxd.com/NicholasDry/watchlist/")

soup = BeautifulSoup(url, "html.parser")

output = open("movies.txt", "w")

movies = soup.find_all('img')
movies.pop(0)

for i in movies:
	output.write(i.get('alt', ''))
	output.write("\n")
