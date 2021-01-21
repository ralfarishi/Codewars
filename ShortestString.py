def find_short(s):
  arr = s.split(' ')
  result = len(min(arr, key = len))
  
  return int(result)
  # other solution
  # return len(min(s.split(' '), key=len))
  # return min(len(x) for x in s.split())

print(find_short("bitcoin take over the world maybe who knows perhaps"), 3)
print(find_short("turns out random test cases are easier than writing out basic ones"), 3)
print(find_short("lets talk about javascript the best language"), 3)
print(find_short("i want to travel the world writing code one day"), 1)
print(find_short("Lets all go on holiday somewhere very cold"), 2)