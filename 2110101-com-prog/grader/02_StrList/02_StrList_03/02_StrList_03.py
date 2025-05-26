birthday = input()
d, m, y = birthday.split("/")
m = int(m)
month = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
print(month[m-1], str(d) + ',', y)