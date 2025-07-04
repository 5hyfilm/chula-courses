import math

def distance1(x1, y1, x2, y2):
    dis1 = math.sqrt((x1-x2)**2 + (y1-y2)**2)
    return dis1

def distance2(p1, p2):
    dis2 = math.sqrt((p1[0]-p2[0])**2 + (p1[1]-p2[1])**2)
    return dis2

def distance3(c1, c2):
    dis3 = distance2(c1, c2)
    if dis3 <= c1[2]+c2[2]:
        ov = True
    else:
        ov = False 
    return dis3, ov

def perimeter(points):
    peri = 0
    for i in range(len(points)):
        peri += distance2(points[i], points[(i+1)%len(points)])
    return peri

exec(input().strip()) 