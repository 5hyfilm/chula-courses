n = int(input())
q = list()
time = []
dtime_list = []

for k in range(n):
    c = input().split()
    
    if c[0] == 'reset':
        ticket = int(c[1])
        i = int(c[1])
        
    elif c[0] == 'new':
        q.append(ticket)
        time.append(int(c[1]))
        print('ticket', ticket)
        ticket+=1
        
    elif c[0] == 'next':
        print('call', i)
        i += 1 
        x = q.index(i-1)
        
    elif c[0] == 'order':
        dtime = int(c[1])-time[x]
        dtime_list.append(dtime)
        print('qtime', i-1, dtime)
        
    elif c[0] == 'avg_qtime':
        print('avg_qtime', sum(dtime_list)/len(dtime_list)) 