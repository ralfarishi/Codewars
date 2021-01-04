def square_sum(numbers):
    squares = [x*x for x in numbers]

    return sum(squares)

print(square_sum([1,2]), 5)
print(square_sum([0, 3, 4, 5]), 50)