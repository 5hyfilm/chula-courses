def amendSentence(string):
    string = list(string)
    n = 2
    # Traverse the string
    for i in range(0, len(string)):
 
        # Convert to lowercase if its
        # an uppercase character
        if string[i] >= 'A' and string[i] <= 'Z':
            # Print space before it
            # if its an uppercase character
            if i != 0:
                print("-", end = "")
 
            print(string[i], end = "")
        else:
            print(string[i], end = "")
 
# Driver Code
if __name__ == "__main__":
    string = "PYTHON  is  very  popular"
    amendSentence(string)