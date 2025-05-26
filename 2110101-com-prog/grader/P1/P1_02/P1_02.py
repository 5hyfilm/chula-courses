def f_str2RLE(text):
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

def f_RLE2str(text):
    t_text = text.split()

    output = ''
    for i, j in enumerate(t_text):
        if i%2 != 0:
            k = i
            output += t_text[k-1]*int(t_text[k])
    return output

cmd = input()

if cmd == 'str2RLE':
    text = input()
    f_str2RLE(text)
elif cmd == 'RLE2str':
    text = input()
    print(f_RLE2str(text))
else:
    print('Error')