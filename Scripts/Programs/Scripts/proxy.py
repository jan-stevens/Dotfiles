#!/usr/bin/python
# import sys
import clipboard
import os

# Define browser command
browser = "google-chrome-stable --silent "

# Proxy url
proxy = ".kuleuven.e-bronnen.be"

# Get the url from user
# url = sys.argv[1]
# Get the url from clipboard
url = clipboard.paste()

# Manipulating the url to use proxy
head = "https://"
center = url.split("/")[2:3][0]
if center[:4] == "www.":
    center = center[4:]
center = center.replace(".","-")
center = center + proxy
tail = url.split("/")[3:]
tail = "/"+"/".join(tail)
url = head + center + tail

# Open the proxy url
os.system(browser + url)


