import numpy as np

def sum_2_rows(M):
    return M[: : 2] + M[1: : 2]

def sum_left_right(M):
    x = M.T
    x = x[: : 2] + x[int(len(M)/2): : int(len(M)/2)]
    return x.T

def sum_upper_lower(M):
    return M[: : 2] + M[int(len(M)/2): : int(len(M)/2)]

def sum_4_quadrants(M):
    x = sum_upper_lower(M)
    y = x.T
    z = y[: : 2] + y[int(len(x)): : int(len(x))]
    return z.T

def sum_4_cells(M):
    x = sum_2_rows(M)
    return sum_2_rows(x.T).T

def count_leap_years(years):
    year = years - 543
    x = year % 400 == 0
    y = year % 100 != 0
    z = year % 4 == 0
    return len(year[x | (y & z)])

exec(input().strip())