import numpy as np

def get_column_from_bottom_to_top(A, c):
    return A[: : -1, c]

def get_odd_rows(A):
    return A[1: : 2]

def get_even_column_last_row(A):
    return A[: :, : : 2][-1]

def get_diagonal1(A): # A is a square matrix# from top-left corner down to bottom-right corner
    return np.array([A[i, i] for i in range(len(A))])

def get_diagonal2(A): # A is a square matrix# from top-right corner down to bottom-left cornerexec(input().strip())
    A = A[: : , : : -1]
    return get_diagonal1(A)

exec(input().strip())