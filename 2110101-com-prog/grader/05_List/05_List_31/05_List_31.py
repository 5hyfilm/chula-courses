card = input().split()
todo = input()
n = len(card)
new_card = []

for a in todo:
    if a == 'C':
        x = card[:(n//2)]
        y = card[(n//2):]
        new_card = y + x
        card = new_card
        new_card = []
    elif a == 'S':
        x = card[:(n//2)]
        y = card[(n//2):]
        for i in range(n//2):
            new_card.append(x[i])
            new_card.append(y[i])
        card = new_card
        new_card = []
    
print(str(card)[1:-1].replace("'", '').replace(',', ''))
