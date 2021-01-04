def digitize(n):
    res = list(map(int, str(n)))
    return res[::-1]
    # other solution
    # return map(int, str(n)[::-1])

print(digitize(1234))