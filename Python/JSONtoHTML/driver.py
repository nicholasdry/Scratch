# Rebuilding of the output to HTML via JSON from the application Quiver.

# TODO: Allow each page to access a parent and a sibling page.
# TODO: Style code pages differently.

import json
import os
import sys

def generateCSS(outputFile):    # Generates <style> css in the HTML file.
    outputFile.write("\t\t<style>\n")
    outputFile.write("\t\t\t * { margin-top: 50px;\n\t\t\ttext-align: center;\n\t\t\twidth: 100%;\n\t\t\tmargin-left: auto;\n\t\t\tmargin-right: auto; }\n")
    outputFile.write("\t\t</style>\n")

def openTags(outputFile, jsonContent):  # Generates all the boilerplate opening code.
    outputFile.write("<html>\n")
    outputFile.write("\t<head>\n")
    generateCSS(outputFile)
    outputFile.write("\t\t<title>%s</title>\n" % (jsonContent['title']))
    outputFile.write("\t</head>\n")
    outputFile.write("\t<body>\n")
    outputFile.write("\t\t\t<h1>%s</h1>\n" % (jsonContent['title']))
    outputFile.write("\t\t\t<a href=\"index.html\">Go Back Home</a>\n")
    outputFile.write("\t\t\t<hr>\n")

def indexOpenTags(outputFile):  # Generates all the boilerplate opening code for the index page.
    outputFile.write("<html>\n")
    outputFile.write("\t<head>\n")
    generateCSS(outputFile)
    outputFile.write("\t\t<title>Index</title>\n")
    outputFile.write("\t</head>\n")
    outputFile.write("\t<body>\n")
    outputFile.write("\t\t\t<h1>Index</h1>\n")
    outputFile.write("\t\t\t<hr>\n")

def closeTags(outputFile):  # Generates all the boilerplate closing code.
    outputFile.write("\t</body>\n")
    outputFile.write("</html>")


directory = os.listdir() # This returns the current working directory.
jsonFiles = []

for i in directory: # This grabs all json files inside this directory.
    if i.endswith(".json"):
        jsonFiles.append(i)

for i in jsonFiles: # Then we parse through each of them indiviually, and make an HTML page for each of them.

    with open(i) as jsonFile: # This returns the JSON object as a dictionary.
        jsonContent = json.load(jsonFile)

    htmlFile = jsonContent['title'] + ".html" # Generating the .html file name.

    outputHTML = open(htmlFile, "w")    # Now we create the file itself.

    openTags(outputHTML, jsonContent)

    classTag = ""   # These provide the tags for later editing with styles.
    idTag = ""
    divContent = ""

    for i in range(0, len(jsonContent['cells'])):   # Now we begin parsing the 'cells' portion of the dictionary.

        innerText = str(jsonContent['cells'][i]).split("'") # Splits up the content for easier access inside of the dictionary element.

        for i in range(0, len(innerText)):  # Searches for useable information.
            token = innerText[i]
            if token == "text":
                classTag = "text"
            elif token == "code":
                classTag = "code"
            elif token == "data":
                i += 2
                divContent = innerText[i]

        outputHTML.write("\t\t\t<div class=\"%s\" id=\"%s\"> %s </div>\n" % (classTag, idTag, divContent))  # Outputs.

    closeTags(outputHTML)

    outputHTML.close()

# Below is the code which handles the index page since all .html files had already been created.

directory = os.listdir() # This returns the current working directory.
htmlFiles = []

for i in directory: # This grabs all json files inside this directory.
    if i.endswith(".html") and i != "index.html": # This is done so it doesn't add index.html inside of itself.
        htmlFiles.append(i)

htmlFile = open("index.html", "w")

indexOpenTags(htmlFile)

for i in htmlFiles:
    pageName = ""
    for j in range(0, len(i)-5):
        pageName += i[j]
    htmlFile.write("\t\t\t<a href=\"%s\">%s</a>\n<br>\n" % (i, pageName))

htmlFile.close()
