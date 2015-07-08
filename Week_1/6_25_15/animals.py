import os
import sys
import random
"""
	animals.py
	Created for: http://www.reddit.com/r/dailyprogrammer/comments/34asls/20150429_challenge_212_intermediate_animal_guess/
	Author: Trevor Salom
"""

inp = open("./questions.txt")
questions = eval(inp.readline().rstrip())
inp.close()
inp = open("./animals.txt")
animals = eval(inp.readline().rstrip())
inp.close()

usr_anm = {}
qi = 0
asked = []
pq = 0
mostsim = ""
nextquest = 0

def ask(q):
    asked.append(q)
    print (questions[q])
    resp = raw_input("Please input Y/N/M for Yes/No/Maybe \n")
    if resp.upper() == 'Y':
        usr_anm[q] = 1
    elif resp.upper() == 'N':
        usr_anm[q] = 0
    else:
        usr_anm[q] = 3

def getAnimAndQ(anim, quest):
    return animals[anim][quest]

def pickNextQ():
    global pq
    global nextquest
    global mostsim
    simanimals = {}
    largestAnim = random.choice(animals.keys())
    for k,v in animals.iteritems():
        simanimals[k] = 0
    for key,value in usr_anm.iteritems():
        for anim,animq in animals.iteritems():
            if value == animq[key]:
                simanimals[anim] += 2
            elif value == 3 or animq[key] == 3:
                simanimals[anim] += 1
            else:
                simanimals[anim] += 0
    for k,v in simanimals.iteritems():
        if v > simanimals[largestAnim]:
            largestAnim = k
    for que,res in animals[largestAnim].iteritems():
        if que in asked:
            if res == 1:
                nextquest = que
    while nextquest in asked:
        nextquest = random.randrange(0, len(questions))
    mostsim = largestAnim
    run()
    

def run():
    global qi
    global questions
    global animals
    global pq
    global nextquest
    global mostsim
    if qi == 0:
        print("Think of an animal, but don't tell me")
        qta = random.randrange(0, len(questions))
        ask(qta)
        asked.append(qta)
        qi += 1
        pickNextQ()
    elif qi < 19:
        print(chr(27) + "[2J")
        print qi
        qi += 1
        ask(nextquest)
        pickNextQ()
    else:
        qi += 1
        re = raw_input("Is your animal a " + mostsim + "? (Y/N)")
        if re.upper() == "Y":
            print "It's okay, I'm a genius computer"
        else:
            print "Congrats!"
            nani = raw_input("What was your animal? ").lower()
            nque = raw_input("Could you suggest a good yes question for your animal: ")
            nind = len(questions)
            questions.append(nque)
            usr_anm[nind] = 1
            animals[nani] = usr_anm
            inp = open("./questions.txt", "wb+")
            inp.write(str(questions))
            inp = open("./animals.txt", "wb+")
            inp.write(str(animals))
            print("Thanks for playing")

run()