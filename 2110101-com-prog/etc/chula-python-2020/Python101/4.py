v1, v2, v3 = [float(e) for e in input().split()]
v = [v1, v2, v3]

u1, u2, u3 = [float(e) for e in input().split()]
u = [u1, u2, u3]

dot_product = (u[0] * v[0]) + (u[1] * v[1]) + (u[2] * v[2])
print(dot_product)