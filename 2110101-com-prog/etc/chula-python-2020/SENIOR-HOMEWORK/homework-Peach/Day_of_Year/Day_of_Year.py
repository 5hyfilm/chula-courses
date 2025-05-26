date = int(input('Date:'))
month = int(input('Month:'))
year = int(input('Year:'))

if year%4 == 0:
    # print('366')
    if month == 1:
        print(date)
    elif month == 2:
        print(31 + date)
    elif month == 3:
        print(31+ 29 + date)
    elif month == 4:
        print(31+ 29 + 31 + date)
    elif month == 5:
        print(31 + 29 + 31 + 30 + date)
    elif month == 6:
        print(31 + 29 + 31 + 30 + 31 + date)
    elif month == 7:
        print(31 + 29 + 31 + 30 + 31 + 30 + date)
    elif month == 8:
        print(31 + 29 + 31 + 30 + 31 + 30 + 31 + date)
    elif month == 9:
        print(31 + 29 + 31 + 30 + 31 + 30 + 31 + 31 + date)
    elif month == 10:
        print(31 + 29 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + date)
    elif month == 11:
          print(31 + 29 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31 + date)
    elif month == 12:
          print(31 + 29 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31 + 30 + date)

else:
    # print(365)
    if month == 1:
        print(date)
    elif month == 2:
        print(31 + date)
    elif month == 3:
        print(31+ 28 + date)
    elif month == 4:
        print(31+ 28 + 31 + date)
    elif month == 5:
        print(31 + 28 + 31 + 30 + date)
    elif month == 6:
        print(31 + 28 + 31 + 30 + 31 + date)
    elif month == 7:
        print(31 + 28 + 31 + 30 + 31 + 30 + date)
    elif month == 8:
        print(31 + 28 + 31 + 30 + 31 + 30 + 31 + date)
    elif month == 9:
        print(31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + date)
    elif month == 10:
        print(31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + date)
    elif month == 11:
          print(31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31 + date)
    elif month == 12:
          print(31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31 + 30 + date)