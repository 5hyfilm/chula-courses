class Card:
    def __init__(self, value, suit):
        self.value = value
        self.suit = suit

    def __str__(self):
        return '(' + self.value + ' ' + self.suit + ')'

    def next1(self):
        value_lst = ['3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A', '2']
        suit_lst = ['club', 'diamond', 'heart', 'spade']
        idx_value = value_lst.index(self.value)
        idx_suit = suit_lst.index(self.suit)
        if self.suit == 'spade':
            new_suit = 'club'
            if self.value == '2':
                new_value = '3'
            else:
                new_value = value_lst[idx_value+1]
        else:
            new_suit = suit_lst[idx_suit+1]
            new_value = self.value
        return Card(new_value, new_suit)

    def next2(self):
        next_card = self.next1()
        self.value = next_card.value
        self.suit = next_card.suit

n = int(input())
cards = []
for i in range(n):
    value, suit = input().split()
    cards.append(Card(value, suit))
for i in range(n):
    print(cards[i].next1())
print("----------")
for i in range(n):
    print(cards[i])
print("----------")
for i in range(n):
    cards[i].next2()
    cards[i].next2()
    print(cards[i])