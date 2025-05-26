import numpy as np

def mult_table(nrows, ncols):
    grid = np.zeros((nrows, ncols))
    grid[0] = np.arange(1, ncols+1)
    for i in range(1, nrows):
        grid[i] = np.arange(1, ncols+1)*[i+1]
    return grid.astype(int)

exec(input().strip())