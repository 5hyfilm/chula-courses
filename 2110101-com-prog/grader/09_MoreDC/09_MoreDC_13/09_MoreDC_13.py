n = int(input())

winner = []
loser = []
for i in range(n):
    team = input().split()    
    winner.append(team[0])
    loser.append(team[1])

never = []
for j in winner:
    if j not in loser:
        never.append(j)

ans = []
[ans.append(x) for x in never if x not in ans]

print(sorted(ans))