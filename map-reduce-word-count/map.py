#!/usr/bin/python
import sys

for line in sys.stdin:
	for word in line.split():
		print(word + "\t1")
