# my solution
def even_or_odd(number):
	if number % 2 == 0:
		return "Even"
	else:
		return "Odd"
	# other solution
	# return 'Odd' if number % 2 else 'Even' 

print(even_or_odd(2), "Even")
print(even_or_odd(0), "Even")
print(even_or_odd(7), "Odd")
print(even_or_odd(1), "Odd")
print(even_or_odd(-1), "Odd")