N = int(input())

real_dct = {}
nick_dct = {}
for i in range(N):
    real, nick = input().split()
    real_dct[real] = nick
    nick_dct[nick] = real

M = int(input())

for j in range(M):
    cmd = input()
    if cmd in real_dct:
        print(real_dct[cmd])
    elif cmd in nick_dct:
        print(nick_dct[cmd])
    else:
        print('Not found')