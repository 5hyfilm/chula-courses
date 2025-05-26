def to_Thai(N):
    word_num = { "0": "soon", "00": "", "1" : "neung" , "2" : "song", "3" : "sam", "4" : "si", "5" : "ha","6" : "hok", "7": "chet", "8" : "paet", "9" : "kao",
    "01": "et",  "21": "yi sip et ",  "31": "sam sip et", "41": "si sip et", "51": "ha sip et", "61": "hok sip et",  "71": "chet sip et", "81": "paet sip et", "91": "kao sip et",
    "02" : "song", "03" : "sam", "04" : "si", "05" : "ha", "06" : "hok", "07": "chet", "08" : "paet", "09" : "kao", "10" : "sip", "11": "sip et", "12" :"sip song", "13" : "sip san", "14" : "sip si", "15" : "sip ha", "17":"sip chet", "18" :"sip paet", "19": "sip kao", "20" : "yi sip", "30" : "sam sip", "40" : "si sip", "50" : "ha sip", "60" : "hok sip", "70": "chet sip", "80" : "paet sip", "90" : "kao sip"}
    keys = []
    N = str(N)
    for k in word_num.keys():
        keys.append(k)

    if len(N) == 1:
        return(word_num[N[0]])
    elif len(N) == 2:
        c = 0
        for k in keys:
            if k == N[0] + N[1]:
                c += 1
        if c == 1:
            return(word_num[N[0] + N[1]])
        else:
            return(word_num[str(int(N[0]) * 10)] + " " + word_num[N[1]])
    elif len(N) == 3:
        c = 0
        for k in keys:
            if k == N[1] + N[2]:
                c += 1
        if c == 1:
            return(word_num[N[0]]+ " roi " + word_num[N[1] + N[2]])
        else:
            return(word_num[N[0]]+ " roi " + word_num[str(int(N[1]) * 10)] + " " + word_num[N[2]])
    elif len(N) == 4:
        c = 0
        for k in keys:
            if k == N[2] + N[3]:
                c += 1
        if c == 1:
            if N[1] == '0' :
                return(word_num[N[0]]+ " pun " + word_num[N[2] + N[3]])
            else:
                return(word_num[N[0]]+ " pun " + word_num[N[1]]+ " roi " + word_num[N[2] + N[3]])

        else:
            if N[1] == '0' :
                return(word_num[N[0]]+ " pun " + word_num[str(int(N[2]) * 10)] + " " + word_num[N[3]])
            else:
                return(word_num[N[0]]+ " pun " + word_num[N[1]]+ " roi " + word_num[str(int(N[2]) * 10)] + " " + word_num[N[3]])

exec(input().strip())