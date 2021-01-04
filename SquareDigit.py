def square_digit(number):
	s = ''
	for i in str(number):
		s += str(int(i)**2)
	return int(s)

print(square_digit(9119))