text = input()

removed = ""
for e in text:
    if e in "\"\'\\/:;,.-()><":
        removed += " "
    else:
        removed += e

removed = ''.join(removed)
splited = removed.split()
lowered = splited[0].lower()

cap_list = []
for w in splited[1: ]:
    cap =  w[0].upper() + w[1:].lower()
    cap_list.append(cap)

r_cap = ''
for r in cap_list:
    r_cap += r

print(lowered + r_cap)