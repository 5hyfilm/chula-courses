text = input().lower()
n = int(input())

dict_lst = []
exist_lst = []

for i in range(n):
    word = input()
    if word in text:
        exist_lst.append(word)
print(exist_lst)

