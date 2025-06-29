def read_date():
    d, m, y = input().split()
    mname = ["Jan", "Feb", "Mar" , "Apr", "May", "Jun", "Jul","Aug", "Sep", "Oct", "Nov", "Dec"]
    mi = mname.index(m)+1
    return [int(d), mi, int(y)]

def zodiac(d,m): 
    if d >= 22 and m == 3 or d <=21 and m ==4 : z = "Aries"
    elif d >= 22 and m == 4 or d <=21 and m ==5 : z  = "Taurus"
    elif d >= 22 and m == 5 or d <=21 and m ==6 : z = "Gemini"
    elif d >= 22 and m == 6 or d <=21 and m ==7 : z = "Cancer"
    elif d >= 22 and m == 7 or d <=21 and m ==8 : z = "Leo"
    elif d >= 22 and m == 8 or d <=21 and m ==9 : z = "Virgo"
    elif d >= 22 and m == 9 or d <=21 and m ==10 : z = "Libra"
    elif d >= 22 and m == 10 or d <=21 and m ==11 : z = "Scorpio"
    elif d >= 22 and m == 11 or d <=21 and m ==12 : z = "Sagittarius"
    elif d >= 22 and m == 12 or d <=20 and m ==1 : z = "Capricorn"
    elif d >= 21 and m == 1 or d <=20 and m ==2 : z = "Aquarius"
    elif d >= 21 and m == 2 or d <=21 and m ==3 : z = "Pisces"
    return z

def days_in_feb(y):
    if y%400 == 0 or y%100 != 0 and y%4 == 0:
        return 29
    return 28

def days_in_month(m, y):
    if m == 4 or m == 6 or m == 9 or m == 11:
        return 30
    elif m == 2:
        return days_in_feb(y)
    return 31

def days_in_between(d1, m1, y1, d2, m2, y2):
    days = 0
    for i in range(12, m1, -1):
        days += days_in_month(i, y1)
    for i in range(1, m2):
        days += days_in_month(i, y2)
    days += (days_in_month(m1, y1) - d1 + 1) + int((y2 - y1 - 1)*365.25) + (d2 - 1)
    return days

def main():
    d1, m1, y1 = read_date()
    d2, m2, y2 = read_date()
    print(zodiac(d1,m1),zodiac(d2,m2))
    print(days_in_between(d1,m1,y1,d2,m2,y2))

exec(input().strip())