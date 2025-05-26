n = input()
dig = len(n)
n12 = (11-sum([(dig+1-i)*int(n[i]) for i in range(dig)])%11)%10
print(n[0], n[1:5],n[5:10], n[10:12], n12)