FIVB = { 
        'Netherlands': {'Belgium'},
        'Turkey' : {'Serbia', 'Italy'},
        'Russia' : {'Germany', 'Belgium'},
        'Japan': {'Thailand', 'China'},
        'China': {'Korea'},
        'USA' : {'Dominican', 'Canada'},
        'Poland' : {'Italy'},
        'Brazil': {'Canada', 'Dominican'},
        'Germany': {'Netherlands'},
        'Korea': {'Thailand'},
        'Serbia' : {'Poland'}
     }

def win(FIVB, t1, t2): 
    if t2 in FIVB[t1]:
        return True
    return False
# print(win(FIVB, 'Turkey', 'Thai'))

def get_all_teams(FIVB):
    key_lst = list(FIVB.keys())
    value_lst = []
    for c in key_lst:
        x = list(FIVB[c])
        value_lst.append(x)
    flat_value_lst = [item for sublist in value_lst for item in sublist]
    mergedlist = list(set(key_lst + flat_value_lst))
    return sorted(mergedlist)
# print(get_all_teams(FIVB))

def calculate_points(FIVB):
    # return a dictionary where key is each team and its value is points of the team.
    # 3 points for a win
    # A team that did not win any team gets 0 point.
    points = dict()
    all_team = get_all_teams(FIVB)
    for i in all_team:
        if i in FIVB.keys():
            points[i] = len(FIVB[i])*3
        else:
            points[i] = 0
    return points

print(calculate_points(FIVB))

