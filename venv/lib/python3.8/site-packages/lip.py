def mycoolfunction(inputlist):
	"""This is a function which can check each list weather it is a list or item"""
	for each_item in inputlist:
		if isinstance (each_item, list):
			mycoolfunction(each_item)
		else:
			print(each_item)