text = input()
n = len(text)
c = 1
i = 0
j = 0

for i in range (n):
    i=j
    if j>=n:
        break
    char = text[i]
    while i+1<n and char==text[i+1]:
        c += 1
        i += 1
        j += 1
    print(char, c, end=" ")
    c = 1
    j += 1