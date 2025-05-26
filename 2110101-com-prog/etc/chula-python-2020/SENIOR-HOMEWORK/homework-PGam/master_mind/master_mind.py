import random
import math

WINNING_MSG = "Congratulations! You won the game."
LOSING_MSG = "Sorry! You just lost it."

code = ''.join(random.sample('ABCDEF', 4))

print('Please guess the puzzle code using')
print('the four distinct code characters from [A to F]:')

#----------------------------------------------------
import sys
P = 0
V = 0
X = 0

Guess = input("Turn #1 :  ")
if Guess == code :
    print(WINNING_MSG)
    sys.exit()
elif Guess != code :
    if Guess[0] == code[0] :
        P += 1
    elif Guess[0] in code :
        V += 1
    if Guess[1] == code[1] :
        P += 1
    elif Guess[1] in code :
        V += 1
    if Guess[2] == code[2] :
        P += 1
    elif Guess[2] in code :
        V += 1
    if Guess[3] == code[3] :
        P += 1
    elif Guess[3] in code :
        V += 1
    if Guess not in code :
        X = 4-P-V
        print (' ' * 11 + 'P='+(str(P)) + ',' + 'V='+(str(V)) + ',' + 'X='+(str(X)))
    
Guess = input('Turn #2 :  ')
P = 0
V = 0
X = 0
if Guess == code :
    print (WINNING_MSG)
    sys.exit()
else :
    if Guess[0] == code[0] :
        P += 1
    elif Guess[0] in code :
        V += 1
    if Guess[1] == code[1] :
        P += 1
    elif Guess[1] in code :
        V += 1
    if Guess[2] == code[2] :
        P += 1
    elif Guess[2] in code :
        V += 1
    if Guess[3] == code[3] :
        P += 1
    elif Guess[3] in code :
        V += 1
    if Guess not in code :
        X = 4-P-V
        print (' ' * 11 + 'P='+(str(P)) + ',' + 'V='+(str(V)) + ',' + 'X='+(str(X)))
        
Guess = input("Turn #3 :  ")
P = 0
V = 0
X = 0
if Guess == code :
    print(WINNING_MSG)
    sys.exit()   
else :
    if Guess[0] == code[0] :
        P += 1
    elif Guess[0] in code :
        V += 1
    if Guess[1] == code[1] :
        P += 1
    elif Guess[1] in code :
        V += 1
    if Guess[2] == code[2] :
        P += 1
    elif Guess[2] in code :
        V += 1
    if Guess[3] == code[3] :
        P += 1
    elif Guess[3] in code :
        V += 1
    if Guess not in code :
        X = 4-P-V
        print (' ' * 11 + 'P='+(str(P)) + ',' + 'V='+(str(V)) + ',' + 'X='+(str(X)))
        
Guess = input("Turn #4 :  ")
P = 0
V = 0
X = 0
if Guess == code :
    print (WINNING_MSG)
    sys.exit()
else :
    if Guess[0] == code[0] :
        P += 1
    elif Guess[0] in code :
        V += 1
    if Guess[1] == code[1] :
        P += 1
    elif Guess[1] in code :
        V += 1
    if Guess[2] == code[2] :
        P += 1
    elif Guess[2] in code :
        V += 1
    if Guess[3] == code[3] :
        P += 1
    elif Guess[3] in code :
        V += 1
    if Guess not in code :
        X = 4-P-V
        print (' ' * 11 + 'P='+(str(P)) + ',' + 'V='+(str(V)) + ',' + 'X='+(str(X)))
        
if Guess == code :
    print (WINNING_MSG)    
else :
    print ("Sorry! You just lost it.")
    print ("The answer is " + (code))
    print ("Please try again...")