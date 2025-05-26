word = str(input())
text = str(input())

sym_list = ['"', '(', ')', ',', '.', "'"]
for sym in sym_list:
    text = text.replace(sym, ' ')

num = 0
for i in text.split():
    if word == i:
        num += 1
print(num)