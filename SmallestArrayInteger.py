# my solution
def find_smallest_int(arr):
	current_int = arr[0]
	for num in arr:
		if num < current_int:
			current_int = num
	return current_int
	# other solution
	# return min(arr)

print(find_smallest_int([78, 56, 232, 12, 11, 43]), 11)
print(find_smallest_int([78, 56, -2, 12, 8, -33]), -33)
print(find_smallest_int([0, 1-2**64, 2**64]), 1-2**64)