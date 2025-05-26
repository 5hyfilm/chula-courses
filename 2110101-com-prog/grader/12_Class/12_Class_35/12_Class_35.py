class roman:
    def __init__(self, r):
        self.text = r

    def __lt__(self, rhs):
        return int(self) < int(rhs)

    def __str__(self):
        n = int(self)
        num = (1000, 900,  500, 400, 100,  90, 50,  40, 10,  9,   5,  4,   1)
        rom = ('M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I')
        result = ''
        for i in range(len(num)):
            count = int(n / num[i])
            result += str(rom[i] * count)
            n -= num[i] * count
            self.text = result
        return result

    def __int__(self):
        x = str(self.text)
        x = x.replace('IV', 'IIII')
        x = x.replace('IX', 'VIIII')
        x = x.replace('XL', 'XXXX')
        x = x.replace('XC', 'LXXXX')
        x = x.replace('CD', 'CCCC')
        x = x.replace('CM', 'DCCCC')
        x = x.replace('I', '1 ')
        x = x.replace('V', '5 ')
        x = x.replace('X', '10 ')
        x = x.replace('L', '50 ')
        x = x.replace('C', '100 ')
        x = x.replace('D', '500 ')
        x = x.replace('M', '1000 ')
        return sum(map(int, x.split()))

    def __add__(self, rhs):
        return roman(str(int(self) + int(rhs)))

t, r1, r2 = input().split()
a = roman(r1); b = roman(r2)
if t == '1' : print(a < b)
elif t == '2' : print(int(a),int(b))
elif t == '3' : print(str(a),str(b))
elif t == '4' : print(int(a + b))
else : print(str(a + b))