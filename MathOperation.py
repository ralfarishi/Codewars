def basic_op(operator, value1, value2):
    if operator == '+':
        return value1 + value2
    elif operator == '-':
        return value1 - value2
    elif operator == '*':
        return value1 * value2
    elif operator == '/':
        return value1 / value2

print(basic_op('+', 6,2)) # 8
print(basic_op('-', 6,2)) # 4
print(basic_op('*', 6,2)) # 12
print(basic_op('/', 6,2)) # 3