def to_binary(n):
    bin = "{0:b}".format(n)
    return int(bin)

print(to_binary(1), 1)
print(to_binary(2), 10)
print(to_binary(3), 11)
print(to_binary(5), 101)