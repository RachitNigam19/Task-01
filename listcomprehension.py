list_1 = []
for a in range(1,100):
          list_1.append(a)
print(list_1)

# list comprehension
list_2 = [m for m in range(1,101) if m%2==0]
print(list_2)

s = "Rachit"
d = [k for k in s]
print(d)