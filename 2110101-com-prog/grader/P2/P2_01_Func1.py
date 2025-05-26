def is_odd(n):
    if n%2 != 0:
        return True 
    return False

def has_odds(x):
    for i in x:
        if is_odd(i) == True:
            return True
    return False

def all_odds(x):
    for i in x:
        if is_odd(i) == True:
            boolean = True
        elif is_odd(i) == False:
            boolean = False
    return boolean

def no_odds(x):
    for i in x:
        if is_odd(i) == False:
            boolean = True
        elif is_odd(i) == True:
            return False
    return boolean

print(all_odds([1,3,11,17]))

# def get_odds(x):
    