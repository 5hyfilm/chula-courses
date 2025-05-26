def knows(R, x, y):
    return y in R[x]

def is_celeb(R, x):
    for i in R[x]:
        if i !=x :
            return False
    for i in R :
        if i !=x and not knows(R, i, x) :
            return False
    return True

def find_celeb(R):
    for person in R:
        if is_celeb(R, person):
            return person
    return None

def read_relations():
    R = dict()
    while True:
        d = input().split()
        if len(d) == 1:
            break
        if d[0] not in R:
            R[d[0]] = set()
        if d[1] not in R:
            R[d[1]] = set()
        R[d[0]].add(d[1])
    return R

def main():
    R = read_relations()
    c = find_celeb(R)
    if c == None:
        print('Not Found')
    else:
        print(c)

exec(input().strip())