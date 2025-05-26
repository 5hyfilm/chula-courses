n = str(input())
len_n = len(n)
int_n = int(n)

if len_n < 4:
    print(int_n )
elif len_n == 4:
    print("%.1f" % (int_n/1e3) + 'K')
elif len_n <= 6:
    print(str(round(int_n/1e3)) + 'K')
elif len_n == 7:
    print("%.1f" % (int_n/1e6) + 'M')
elif len_n <= 9:
    print(str(round(int_n/1e6)) + 'M')
elif len_n == 10:
    print("%.1f" % (int_n/1e9) + 'B')
else:
    print(str(round(int_n/1e9)) + 'B')