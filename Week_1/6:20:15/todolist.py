"""
	todolist.py
	Created for: http://www.reddit.com/r/dailyprogrammer/comments/39ws1x/20150615_challenge_218_easy_todo_list_part_1/
	Author: Trevor Salom
"""

items = []

def viewList():
	print("Todo:")
	for item in items:
		print(item)

def addItem(item):
	items.append(item)

def deleteItem(item):
	items.remove(item)

addItem('Take a shower')
addItem('Go to work')
viewList()

addItem('Buy a new phone')
deleteItem('Go to work')
viewList()