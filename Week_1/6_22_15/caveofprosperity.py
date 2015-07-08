import os
import sys
"""
	caveofprosperity.py
	Created for: http://www.reddit.com/r/dailyprogrammer/comments/3aewlg/20150617_challenge_219_hard_the_cave_of_prosperity/
	Author: Trevor Salom
"""

nuggets = []
def addBiggest(arr, opt, c):
    largest = opt[0]
    if not tot() >= c:
        for n in opt:
            if n > largest and not tot()+n >= c:
                largest = n
        if not tot() + largest >= c:
            arr.append(largest)
            opt.remove(largest)
            addBiggest(arr, opt, c)

def tot(arr = nuggets):
    total = 0
    for nugget in nuggets:
        total += nugget
    return total

lns = []


tnuggets = []

f = sys.argv[1]

inp = open("./" + f, 'r')
lns =  inp.readlines()
cap = float(lns[0].rstrip())

i = 2
count = int(lns[1].rstrip())
while(i < count + 2):
    tnuggets.append(float(lns[i].rstrip()))
    i += 1
    
addBiggest(nuggets, tnuggets, cap)

print tot()

for g in nuggets:
    print g