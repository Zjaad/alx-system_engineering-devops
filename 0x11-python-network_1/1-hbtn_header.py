#!/usr/bin/python3
"""Sends a request to the URL and displays the value of the X-Request-Id"""
import urllib.request
import sys
if __name__ == "__main__":
    link = sys.argv[1]
    with urllib.request.urlopen(link) as r:
        print(r.getheader('X-Request-Id'))
