#!/usr/bin/python3
"""Fetches https://alx-intranet.hbtn.io/status using urllib."""
import urllib.request

if __name__ == "__main__":
    link = 'https://alx-intranet.hbtn.io/status'
    with urllib.request.urlopen(link) as r:
        b = r.read()
        print("Body response:")
        print(f"\t- type: {type(b)}")
        print(f"\t- content: {b}")
        print(f"\t- utf8 content: {b.decode('utf-8')}")
