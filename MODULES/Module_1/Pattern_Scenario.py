## Problem I:
num = 10
xi = 1
for i in range(1,num+1):
    print()
    xi += i
    for j in range(xi-i,xi):
        if j <= num:
            print(j, end=' ')

# ----------XX----------
# ----------XX----------

## Problem II:
num = 5
next_i = 0
for i in range(1,num+1):
    print()
    for j in range(i,num+1):
        print(j, end = ' ')
for xj in range(j-1,0,-1):
    print()
    for xi in range(xj,i+1):
        print(xi,end = ' ')