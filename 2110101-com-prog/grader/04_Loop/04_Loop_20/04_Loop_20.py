i = 0

min_x = min_y = 0
max_x = max_y = 0

while(1):
    n = input()
    if n == 'Zig-Zag' or n == 'Zag-Zig':
        break
    if i%2 == 0:
        x, y = [int(z) for z in n.split()]
        if i == 0:
            min_x = max_x = x
            min_y = min_y = y
        min_x = min(min_x, x)
        max_x = max(max_x, x)
        min_y = min(min_y, y)
        max_y = max(max_y, y)
    else:
        y, x = [int(z) for z in n.split()]
        min_x = min(min_x, x)
        max_x = max(max_x, x)
        min_y = min(min_y, y)
        max_y = max(max_y, y)
    i += 1

if n == 'Zig-Zag':
    print(min_x, max_y)
else:
    print(min_y, max_x)
