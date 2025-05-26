m = int(input())
i = 0

c1 = 0
c2 = 0

while c1<m and c2<m and i<3*m:
    p1, p2 = input().split()
    if p1 == 'R' and p2 == 'S':
        c1+=1
    elif p1 == 'P' and p2 == 'R':
        c1+=1
    elif p1 == 'S' and p2 == 'P':
        c1+=1
# ---
    elif p2 == 'R' and p1 == 'S':
        c2+=1
    elif p2 == 'P' and p1 == 'R':
        c2+=1
    elif p2 == 'S' and p1 == 'P':
        c2+=1
# ---
    elif p1 == 'R' and p2 == 'R':
        c1+=0; c2+=0
    elif p1 == 'P' and p2 == 'P':
        c1+=0; c2+=0
    elif p1 == 'S' and p2 == 'S':
        c1+=0; c2+=0
    i+=1

c_l = [c1, c2]
if i == (3*m):
    print(c1 , c2)
    print('Tie')
else:
    max_c = max(c_l)
    print(c1 , c2)
    print('Player', c_l.index(max_c)+1, 'wins')