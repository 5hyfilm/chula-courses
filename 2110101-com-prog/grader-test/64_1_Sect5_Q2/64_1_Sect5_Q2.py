N = int(input())

def rating(song_lv, song_score):
    return int((25*(int(song_lv)+1))*(int(song_score)/(10**7)))

dct = {}
all_lst = []

for i in range(N):
    cmd = input().split(' | ')
    if cmd[0] == 'Play':
        name, lv, score = cmd[1], int(cmd[2]), int(cmd[3])
        song_rating = rating(lv, score)
        temp = [name, lv, score, song_rating]
        if temp[0] not in dct:
            dct[temp[0]] = [temp[1], temp[2], temp[3]]
        else:
            if song_rating > dct[temp[0]][2]: # rating
                dct[temp[0]] = [temp[1], temp[2], temp[3]]
            elif song_rating == dct[temp[0]][2]:
                if temp[1] > dct[temp[0]][0]: # level
                    dct[temp[0]] = [temp[1], temp[2], temp[3]]
                elif temp[1] == dct[temp[0]][0]: # score
                    if temp[2] > dct[temp[0]][1]:
                        dct[temp[0]] = [temp[1], temp[2], temp[3]]

    elif cmd[0] == 'Rating' and len(cmd) == 1:
        scores = 0
        sort_dct = sorted(dct.values(), key=lambda x: (-x[-1]))
        for e in sort_dct[:5]:
            scores+=e[-1]
        print(scores)

    elif cmd[0] == 'Rating' and isinstance(cmd[1], str):
        if cmd[1] in dct:
            print(rating(dct[cmd[1]][0], dct[cmd[1]][1]))
        else:
            print(0)

    elif cmd[0] == 'Detail' and isinstance(cmd[1], str):
        if cmd[1] in dct:
            print(cmd[1], '|', dct[cmd[1]][0], '|', dct[cmd[1]][1], '|', rating(dct[cmd[1]][0], dct[cmd[1]][1]))
        else:
            print(str(cmd[1])+ ':', 'No play history')