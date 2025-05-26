def vector3d():
    x = input()
    x = x.replace('[', '')
    x = x.replace(']', '')
    x = x.replace(',', '')
    x = x.split()
    map_object = map(float, x)
    x = list(map_object)
    return x

u = vector3d()
v = vector3d()

ans_vec = []
for i in range(3):
    ans = u[i] + v[i]
    ans_vec.append(ans)

print(str(u), '+', str(v), '=', ans_vec)