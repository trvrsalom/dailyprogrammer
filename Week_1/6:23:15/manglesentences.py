import os
import sys
"""
	manglesentences.py
	Created for: http://www.reddit.com/r/dailyprogrammer/comments/3aqvjn/20150622_challenge_220_easy_mangling_sentences/
	Author: Trevor Salom
"""

f = sys.argv[1]

inp = open("./" + f, 'r')
ln =  inp.readline()
caps = []
chars = []
charI = []
spaces = []
for index, char in enumerate(ln):
    if char == char.upper() and char.isalnum():
        caps.append(index)
    if not char.isalnum() and not char == " ":
        chars.append(char)
        charI.append(index)
    if char == " ":
        spaces.append(index)
for ind in range(len(charI), 0, -1):
    ln = ln[:charI[ind-1]] + ln[charI[ind-1]+1:]
words = ln.split(" ")
sort = ""
for word in words:
    sort += "".join(sorted(word.lower()))

spaceAddr = 0    
charInd = 0
for space in spaces:
    if space > charI[charInd]:
        spaceAddr += 1
        charInd += 1
    sort = sort[:space - spaceAddr] + " " + sort[space - spaceAddr:]

for index,char in enumerate(chars):
    sort = sort[:charI[index]] + char + sort[charI[index]:]

aSort = list(sort)
for capi in caps:
    aSort[capi] = aSort[capi].upper()

sort = "".join(aSort)
print sort
