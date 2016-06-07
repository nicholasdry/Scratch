from bs4 import BeautifulSoup

html_doc = """
<html><head><title>The Dormouse's story</title></head>
<body>
<p class="title"><b>The Dormouse's story</b></p>

<p class="story">Once upon a time there were three little sisters; and their names were
<a href="http://example.com/elsie" class="sister" id="link1">Elsie</a>,
<a href="http://example.com/lacie" class="sister" id="link2">Lacie</a> and
<a href="http://example.com/tillie" class="sister" id="link3">Tillie</a>;
and they lived at the bottom of a well.</p>

<p class="story">...</p>
"""

soup = BeautifulSoup(html_doc, "html.parser")

# print(soup.title) Returns the title tag, which then can be accessed by:
# print(soup.title.string)

# If you want to grab all sisters, print the following:
# sisters = soup.find_all("a", {"class": "sister"})

# for i in sisters:
#    print(i)

# The following extracts all the text from the HTML document
# print(soup.get_text())
