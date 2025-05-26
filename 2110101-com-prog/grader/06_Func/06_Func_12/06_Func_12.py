def is_prime(n):
 # ทดสอบว่า n เป็นจำนวนเฉพาะหรือไม่
    if n <= 1:
        return False
    for k in range(2,int(n**0.5)+1):
        if n%k == 0:
            return False
    return True

def next_prime(N):
    N2 = N + 1
    while True:
        if is_prime(N2) == True:
            return N2
        N2 += 1
    return N2

def next_twin_prime(N):
    while True:
        N = next_prime(N)
        N2 = next_prime(N)
        if N2 - N == 2:
            return N, N2
        N += 1

exec(input().strip()) 