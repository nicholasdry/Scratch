# Nicholas TODO: Check multiple airlines

from bs4 import BeautifulSoup
import urllib2
from selenium import webdriver

departure = str(raw_input("MM/DD/YYYY Of Departure > "))
ret = str(raw_input("MM/DD/YYYY Of Return > "))
origin = str(raw_input("Enter Your Departure > "))
dest = str(raw_input("Enter Your Destination > "))
adults = str(raw_input("How Many Adults Will Be Flying > "))
children = str(raw_input("How Many Children Will Be Flying > "))

expediaLink = "https://www.expedia.com/Flights-Search?trip=roundtrip&leg1=from:{},to:{},departure:{}TANYT&leg2=from:{},to:{},departure:{}TANYT&passengers=children:{},adults:{},seniors:0,infantinlap:Y&mode=search".format(origin, dest, departure, origin, dest, ret, children, adults)

html = urllib2.urlopen(expediaLink)

soup = BeautifulSoup(html, "html.parser")

prices = soup.find_all("strong", {"class": "price"})

for i in prices:
	print(i)

print(soup.title)
