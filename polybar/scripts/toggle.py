#!/bin/python

from mpd import MPDClient

client = MPDClient()
client.connect("localhost", 6600)
print("" if client.status()['state'] == "play" else "")
client.disconnect()
