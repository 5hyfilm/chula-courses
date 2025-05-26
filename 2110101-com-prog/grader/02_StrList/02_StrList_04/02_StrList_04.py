M = input()
N = input()

if len(M) < int(N):
    print('0'*(int(N)-len(M)) + M)
else:
    print(M)