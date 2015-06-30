import os
import math
"""
	spacecode.py
	Created for: https://www.reddit.com/r/dailyprogrammer/comments/38fjll/20150603_challenge_217_intermediate_space_code/
	Author: Trevor Salom
"""

def pickBest(r):
	rlist = []
	for k,inp in enumerate(r):
		rlist.append(sum(l.isalpha() or l.isspace() for l in inp))
	return rlist.index(max(rlist))


lns = open("input.txt").read().splitlines()
p = ["Omicron", "Hoth", "Ryza", "Htrae"]
results = []

for line in lns:
    line = line.split()
    results = ["".join(chr(int(c) ^ 0b10000) for c in line),"".join(chr(int(c) - 10) for c in line),"".join(chr(int(c) + 1) for c in line),"".join(chr(int(c)) for c in reversed(line))]
    b = pickBest(results)
    print p[b] + ": " + results[b]