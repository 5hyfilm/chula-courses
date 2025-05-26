word = input()
vowel = ['a', 'e', 'i', 'o', 'u']

if word[-1] == 's' or word[-1] == 'x' or word[-2:] == 'ch':
    word = word + 'es'
elif word[-1] == 'y' and word[-2] not in vowel:
    word = word[:-1] + 'ies'
else:
    word = word + 's'
print(word)