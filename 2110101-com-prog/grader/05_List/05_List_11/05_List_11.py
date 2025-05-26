text = input()

output = []
def check(num):
    if str(num) not in text:
        output.append(num)
    
for i in range(0, 10):
    check(i)

if output == []:
    print('None')
else:
    print(str(output)[1:-1].replace(' ',''))