import numpy as np

def p(X):
    logit_x = -3.98 + 0.1*X[:, 0] + 0.5*X[:, 1]
    return 1/(1+(np.e**(-logit_x)))

exec(input().strip())