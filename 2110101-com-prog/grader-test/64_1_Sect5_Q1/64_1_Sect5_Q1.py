week = int(input())

price_lst = []
for i in range(week):
    price_day = input().split(',')
    price_day = [float(i) for i in price_day]
    for j in price_day:
        price_lst.append(j)

fast_period = 7
slow_period = 14

def alpha(period):
     return 2/(1+period)

def EMA(period):
    lst = [0]*(period-1)
    EMAt0 = (1/period)*(sum(price_lst[:period]))
    EMAt = [EMAt0]
    for i in range(period, len(price_lst)):
        EMAt.append(alpha(period) * price_lst[i] + EMAt[i-period] * (1-alpha(period)))
    return lst + EMAt

fast_EMA = EMA(fast_period)
slow_EMA = EMA(slow_period)

check = 0
for i in range(14, len(price_lst)):
    if fast_EMA[i] > slow_EMA[i] and fast_EMA[i-1] < slow_EMA[i-1]:
        print('BUY at', "%.2f" % price_lst[i])
        check = 1
    elif fast_EMA[i] < slow_EMA[i] and fast_EMA[i-1] > slow_EMA[i-1]:
        print('SELL at', "%.2f" % price_lst[i])
        check = 1
if check == 0:
    print('No results')
else:
    pass