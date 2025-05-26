button = {
    '2': 'a',
    '22': 'b',
    '222': 'c',
    '3': 'd',
    '33': 'e',
    '333': 'f',
    '4': 'g',
    '44': 'h',
    '444': 'i',
    '5': 'j',
    '55': 'k',
    '555': 'l',
    '6': 'm',
    '66': 'n',
    '666': 'o',
    '7': 'p',
    '77': 'q',
    '777': 'r',
    '7777': 's',
    '8': 't',
    '88': 'u',
    '888': 'v',
    '9': 'w',
    '99': 'x',
    '999': 'y',
    '9999': 'z',
    '0': ' '
}

def text2keys(text):
    punc = "\"\'\\/:;,.-()><"
    for ele in text:
        if ele in punc:
            text = text.replace(ele, "")
    keys_lst = []
    swap_button = {y: x for x, y in button.items()}   
    for word in text:
        keys_lst.append(swap_button[word.lower()])
    return str(keys_lst)[1: -1].replace("'", '').replace(',', '')

def keys2text(keys):
    keys_lst = []
    for num in keys.split():
        keys_lst.append(button[num])
    return ''.join(keys_lst)
    
exec(input().strip())