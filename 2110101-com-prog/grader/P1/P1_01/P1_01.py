n1, m1, d1, y1 = input().split()
n2, m2, d2, y2 = input().split()

d1 = int(d1.replace(',',''))
d2 = int(d2.replace(',',''))

month = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
m1 = month.index(m1)+1
m2 = month.index(m2)+1

if int(y2)>int(y1):
    print(n1)
elif int(y1)>int(y2):
    print(n2)

elif int(y2) == int(y1):
    if m2>m1:
        print(n1)
    elif m1>m2:
        print(n2)
    elif m1 == m2:
        if d2>d1:
            print(n1)
        elif d1>d2:
            print(n2)
        elif d1 == d2:
            print(n1, n2)