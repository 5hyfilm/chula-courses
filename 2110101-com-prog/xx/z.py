line = 'I use   LOGITEC   mouse'
line = " ".join(line.split())
n = 2
lst = ''
# for i in range(0, len(string)):
#     print(string[i:i+1])

# print([line[i:i+n] for i in range(0, len(line), n)])
for i in range(1, len(line), n):
    x = line[i:i+n]
    y = line[i:i+n].upper()
    if x == y:
        lst+='-'
        # print("-", end = "")
    # print(line[i:i+n], end = "")
    lst+=line[i:i+n]
ans = lst.replace('--', '-')
print(ans)
