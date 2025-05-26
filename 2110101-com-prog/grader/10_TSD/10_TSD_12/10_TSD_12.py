n = int(input())
union = set()
intersect = set()

i = 0
while i < n:
    x = set(input().split())
    if i == 0:
        union = x
        intersect = x
    else:
        union = union | x
        intersect = intersect & x
    i+=1
    
print(len(union))
print(len(intersect))