def count_sum(nums):
    if not nums: return []
    return [len([n for n in nums if n > 0]), sum(n for n in nums if n < 0)]

print(count_sum([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]),[10,-65])
print(count_sum([0, 2, 3, 0, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14]),[8,-50])
print(count_sum([1]),[1,0])
print(count_sum([-1]),[0,-1])
print(count_sum([0,0,0,0,0,0,0,0,0]),[0,0])
print(count_sum([]),[])

