import math

point_lst = []
stroke_lst = []
new_stroke_lst = []
par_lst = []

for i in range(9):
    par, stroke, state = [int(x) for x in input().split()]
    point_lst.append([par, stroke, state])
    stroke_lst.append(stroke)
    if point_lst[i][2] == 1:
        new_stroke = min(point_lst[i][1], point_lst[i][0]+2)
        new_stroke_lst.append(new_stroke)
    par_lst.append(point_lst[i][0])

sum_new_stroke = sum(new_stroke_lst)
sum_par = sum(par_lst)

handicap = math.floor(0.8*(1.5*sum_new_stroke-sum_par))
total = sum(stroke_lst) - handicap

print(sum(stroke_lst))
print(handicap)
print(total)