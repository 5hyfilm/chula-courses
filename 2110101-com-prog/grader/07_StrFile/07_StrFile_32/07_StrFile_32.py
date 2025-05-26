def no_lowercase(t):
    for x in t:
        if x.islower():
            return False
    return True

def no_uppercase(t):
    for x in t:
        if x.isupper():
            return False
    return True

def no_number(t):
    for x in t:
        if x.isnumeric():
            return False
    return True

def no_symbol(t):
    for x in t:
        if not x.isalnum():
            return False
    return True

def character_repetition(t):
    for i in range(len(t)-3):
        if t[i] == t[i+1] == t[i+2] == t[i+3]:
            return True
    return False

def pattern(t, txt):
    txt = txt*2
    for i in range(len(t)-3):
        a = t[i:i+4]
        if a.upper() in txt or a.upper() in txt[::-1]:
            return True
    return False

def number_sequence(t):
    n = '0123456789'
    return pattern(t, n)

def letter_sequence(t):
    l = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    return pattern(t, l)

def keyboard_pattern(t):
    k = '!@#$%^&*()_+'
    if pattern(t, k):
        return True
    k = 'QWERTYUIOP'
    if pattern(t, k):
        return True
    k = 'ASDFGHJKL'
    if pattern(t, k):
        return True
    k = 'ZXCVBNM'
    if pattern(t, k):
        return True
    return False

passw = input().strip()
errors = []
if len(passw) < 8:
    errors.append("Less than 8 characters")
if no_lowercase(passw):
    errors.append("No lowercase letters")
if no_uppercase(passw):
    errors.append("No uppercase letters")
if no_number(passw):
    errors.append("No numbers")
if no_symbol(passw):
    errors.append("No symbols")
if character_repetition(passw):
    errors.append("Character repetition")
if number_sequence(passw):
    errors.append("Number sequence")
if letter_sequence(passw):
    errors.append("Letter sequence")
if keyboard_pattern(passw):
    errors.append("Keyboard pattern")

if len(errors) == 0:
    print("OK")

for x in errors:
    print(x)