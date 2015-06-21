import os

"""
	todolist_pt2.py
	Created for: http://www.reddit.com/r/dailyprogrammer/comments/3a64hq/20150617_challenge_219_intermediate_todo_list/
	Author: Trevor Salom
"""
items = {"Uncategorized" : []}

def viewItems():
	clear()
	it = 0
	f = 0
	for cat, values in items.items():
		if len(values) > 0: 
			f = 1
			print cat
		for value in values:
			print ("     {:n}: {:s}".format(it, value))
			it += 1
	if f == 0: print ("No Items Found")
	dispMenu(main)
	menuInput(main)

def createItem():
	clear()
	print("Please choose a category")
	for it,value in enumerate(items):
		print("{:n}: {:s}".format(it, value))
	cat = int(raw_input("Which category would you like this item to be in? Please enter a number: "))
	item = raw_input("What would you like to call this item? ")
	iden = ""
	for it,value in enumerate(items):
		if it == cat:
			iden = value
	items[iden].append(item)
	clear()
	dispMenu(main)
	menuInput(main)

def editItem():
	clear()
	it = 0
	for cat, values in items.items():
		print cat
		for value in values:
			print ("     {:n}: {:s}".format(it, value))
			it += 1
	iden = int(raw_input("Which item would you like to edit? Please enter a number: ")) 
	upd = raw_input("What do you want to change this item to? ")
	fcat = ""
	locIt = 0
	sIt = 0
	for cat, values in items.items():
		for sItx,value in enumerate(values):
			if(sIt == iden):
				fcat = cat
				locIt = sItx
			sIt += 1
	items[fcat][locIt] = upd
	clear()
	dispMenu(main)
	menuInput(main)
	
def completeItem():
	clear()
	it = 0
	for cat, values in items.items():
		print cat
		for value in values:
			print ("     {:n}: {:s}".format(it, value))
			it += 1
	iden = int(raw_input("Which item would you like to remove? Please enter a number: ")) 
	fcat = ""
	locIt = 0
	sIt = 0
	for cat, values in items.items():
		for sItx,value in enumerate(values):
			if(sIt == iden):
				fcat = cat
				locIt = sItx
			sIt += 1
	items[fcat].remove(items[fcat][locIt])
	dispMenu(main)
	menuInput(main)
	clear()
	dispMenu(main)
	menuInput(main)

def createCat():
	clear()
	upd = raw_input("What would you like to name your new category? ")
	items[upd] = []
	clear()
	dispMenu(main)
	menuInput(main)

def load():
	clear()
	print("We found the following lists:")
	for root, dirs, files in os.walk(os.path.dirname(__file__)):
		for file in files:
			if file.endswith(".txt"):
				print file.replace(' ', '')[:-4]
	loc = raw_input("Which list would you like to load? ")
	locf = "{:s}.txt".format(loc)
	f = open(os.path.join(os.path.dirname(__file__), locf), "r")
	global items
	items = eval(f.read())
	f.close()
	clear()
	dispMenu(main)
	menuInput(main)


def save():
	loc = raw_input("Please name your list (will overwrite any lists with the same name): ")
	locf = "{:s}.txt".format(loc)
	f = open(os.path.join(os.path.dirname(__file__), locf), "w")
	global items
	f.write(str(items))
	f.close()
	clear()
	dispMenu(main)
	menuInput(main)

main = [
	("View Items", viewItems),
	("Create Item", createItem),
	("Remove Item", completeItem),
	("Edit Item", editItem),
	("Create Category", createCat),
	("Load a todolist", load),
	("Save your todolist", save),
	("Exit", quit)
]

def clear():
	os.system('cls' if os.name == 'nt' else 'clear')

def dispMenu(menu):
	
	for it,value in enumerate(menu):
		(desc, action) = value
		print("{:n}: {:s}".format(it, desc))
	
	

def menuInput(menu):
	inp = int(raw_input("What would you like to do: "))
	(desc, action) = menu[inp]
	action()

clear()
dispMenu(main)
menuInput(main)