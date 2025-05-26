def total(pocket):
    total_v = 0
    for v in pocket:
        total_v += v*pocket[v]
    return total_v
    
def take(pocket, money_in):
    for v in money_in:
        if v in pocket:
            pocket[v] += money_in[v]
        else:
            pocket[v] = money_in[v]

def pay(pocket, amt):
    new_p = {}
    total_v = total(pocket)
    if amt > total_v:
        return new_p
    else:
        money_out = 0
        while 0 < amt:
            for k, v in sorted(pocket.items(), reverse=True):
                while pocket[k] >=1 and amt-k >=0:
                    if k in new_p:
                        new_p[k]+=1
                        pocket[k]-=1
                    else:
                        new_p[k] = 1
                        pocket[k]-=1 
                    amt-=k
        return new_p
exec(input().strip())