str1 = 'Shane likes football; he is a big fan of Arsenal football team.'
str2 = ''.join(e for e in str1 if (e.isalnum() or e.isspace()))
str3 = str2.lower()

def fhash(word, M, G=37):
    sum_ord_num = 0
    for i, letter in enumerate(word):
        ord_num = ord(letter)
        sum_ord_num += ord_num*(G**i)
        result = sum_ord_num%M
    return result

def duplicates(numbers_list):
    store=[]
    checked=[]
    for i in range(len(numbers_list)):
        counter = 1 
        for j in range(i+1,len(numbers_list)):
            if numbers_list[i] not in checked and numbers_list[j]==numbers_list[i] :
                counter +=1 
        if counter > 1 :
            store.append(numbers_list[i])
            checked.append(numbers_list[i])
    return store

word_list = []
for word in str3.split():
    # print(word)
    word_list.append(word)

fh_word_list = []
for word in word_list:
    fh_word = fhash(word, 4)
    fh_word_list.append(fh_word)
    print(word, fh_word)

# print(fh_word_list.count(fh_word))

# print(duplicates(fh_word_list))

# BoW = []

fhash(str3, 4)