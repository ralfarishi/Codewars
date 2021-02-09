def evens_and_odds(n):
  return hex(n)[2:] if n % 2 else bin(n)[2:]

print(evens_and_odds(2),'10')
print(evens_and_odds(13),'d')  