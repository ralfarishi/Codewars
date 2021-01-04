def get_middle(s):
    return s[(len(s)-1)//2:(len(s)+2)//2]

print(get_middle("test"),"es")
print(get_middle("testing"),"t")
print(get_middle("middle"),"dd")
print(get_middle("A"),"A")
print(get_middle("of"),"of")