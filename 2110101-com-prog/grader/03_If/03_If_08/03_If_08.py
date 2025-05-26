d = int(input())
m = int(input())
y = int(input())

y = y-543
ds = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 0]

if y%4 == 0:
    if y%100 == 0:
        if y%400 == 0:
            # print('Leap Year')
            print(sum(ds[:m-1])+d+1)
        else:
            # print('Not a Leap Year')
            print(sum(ds[:m-1])+d)
    else:
        # print('Leap Year')
        print(sum(ds[:m-1])+d+1)
else:
    # print('Not a Leap Year')
    print(sum(ds[:m-1])+d)