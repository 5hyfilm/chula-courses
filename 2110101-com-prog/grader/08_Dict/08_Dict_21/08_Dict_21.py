text = input().strip().lower().replace(' ', '')

removed = ""
for e in text:
    if e in "\"\'\\/:;,.-()><*+0123456789":
        removed += ""
    else:
        removed += e

removed = ''.join(removed)

all_freq = {}
for letter in removed:
    if letter in all_freq:
        all_freq[letter] += 1
    else:
        all_freq[letter] = 1

sorted_dct = sorted(all_freq.items(), key=lambda item: (-item[1], item[0]))

for tupl in sorted_dct:
    print(tupl[0], '->', tupl[1])