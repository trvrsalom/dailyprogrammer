import os
import sys
"""
	piledpaper.py
	Created for: http://www.reddit.com/r/dailyprogrammer/comments/35s2ds/20150513_challenge_214_intermediate_pile_of_paper/
	Author: Trevor Salom
"""
paper = [[]]

def newPaper(x, y):
    global paper 
    paper = [[0]*x for i in range(y)]
    for ri,row in enumerate(paper):
        for si,square in enumerate(row):
            paper[ri][si] = 0
            
def printPaper():
    for ri,row in enumerate(paper):
        r = ""
        for si,square in enumerate(row):
            r = r + "" + str(paper[ri][si])
        print r

def addPaper(typ, sx, sy, lx, ly):
    for x in range(0, ly):
        for y in range(0, lx):
            paper[x+sy][y+sx] = typ

def addPaperFromLine(ln):
    l = ln.split(" ")
    addPaper(int(l[0]), int(l[1]), int(l[2]), int(l[3]), int(l[4]))

def countPaper():
    d = {}
    global paper
    for ri,row in enumerate(paper):
        for si,square in enumerate(row):
            curri = int(paper[ri][si])
            if curri in d:
                d[curri] += 1
            else:
                d[curri] = 1
    for k,v in d.iteritems():
        print str(k) + ' ' + str(v)

f = sys.argv[1]
inp = open("./" + f, 'r')
c = inp.readline().split(" ")
lns = inp.readlines()
newPaper(int(c[0]),int(c[1].rstrip()))
for m in lns:
    addPaperFromLine(m.rstrip())
printPaper()
countPaper()