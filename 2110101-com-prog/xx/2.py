def f(R, C):
    for i in range(R):
        out = ''
        for j in range(C):
            n = j+i+6
            out += ('   ' + str(n))[-4:]
        print(out)

f(5, 10)