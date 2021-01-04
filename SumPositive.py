# my solution
def positive_sum(arr):
	sum = 0

	for i in arr:
		if i > 0:
			sum += i

	return sum
	# other solution
	# return sum(x for x in arr if x > 0)


print(positive_sum([1,2,3,4,5]),15)
print(positive_sum([1,-2,3,4,5]),13)
print(positive_sum([-1,2,3,4,-5]),9)