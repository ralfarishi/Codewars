# my solution
def make_negative(number):
	if number >= 0:
		return -number
	else:
		return number
	# other solution
	# return -abs(number)

print(make_negative(42),-42)
print(make_negative(-5),-5)
