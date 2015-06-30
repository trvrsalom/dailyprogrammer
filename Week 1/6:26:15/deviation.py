import os
import math
"""
	deviation.py
	Created for: https://www.reddit.com/r/dailyprogrammer/comments/35l5eo/20150511_challenge_214_easy_calculating_the/
	Author: Trevor Salom
"""

inp = open("./input.txt", "r")
num = inp.readline().split(" ")
avg = 0
for i in num:
    avg += int(i)
avg /= len(num)

diffsum = 0.0
for i in num:
	diffsum += float((avg-int(i)) * (avg-int(i)))

std_deviation = math.sqrt(float(diffsum/float(len(num))))
print std_deviation