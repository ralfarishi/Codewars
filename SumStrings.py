def sum_str(a, b):
    if not a and not b:
        return '0'
    elif not a:
        return str(b)
    elif not b:
        return str(a)
    else:
        res = int(a) + int(b)
        return str(res)
    
    # other solution
    # return str(int(a or 0) + int(b or 0))

print(sum_str("3", "4"), "7")
print(sum_str("", "4"), "4")
print(sum_str("5", ""), "5")
print(sum_str("9",""), "9")
print(sum_str("","9"), "9")
print(sum_str("",""), "0")