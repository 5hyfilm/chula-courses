import math

bd, bm, by, d, m, y = [int(e) for e in input().split()]

y = y-543
by = by-543
dm = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

if by%4 == 0:
    if by%100 == 0:
        if by%400 == 0:
            # print('Leap Year')
            dm[1] = 29
            red = dm[bm-1]-bd+1+sum(dm[bm:])
        else:
            # print('Not a Leap Year')
            red = dm[bm-1]-bd+1+sum(dm[bm:])
    else:
        # print('Leap Year')
        dm[1] = 29
        red = dm[bm-1]-bd+1+sum(dm[bm:])
else:
    # print('Not a Leap Year')
    red = dm[bm-1]-bd+1+sum(dm[bm:])

black = (y-by-1)*365
dm[1] = 28

if y%4 == 0:
    if y%100 == 0:
        if y%400 == 0:
            # print('Leap Year')
            dm[1] = 29
            blue = sum(dm[:m-1])+d-1
        else:
            # print('Not a Leap Year')
            blue = sum(dm[:m-1])+d-1
    else:
        # print('Leap Year')
        dm[1] = 29
        blue = sum(dm[:m-1])+d-1
else:
    # print('Not a Leap Year')
    blue = sum(dm[:m-1])+d-1
    
t = red + black + blue

physical = math.sin((2*math.pi*t)/23)
emotional = math.sin((2*math.pi*t)/28)
intellectual = math.sin((2*math.pi*t)/33)

print(t, "{:.2f}".format(physical), "{:.2f}".format(emotional), "{:.2f}".format(intellectual))