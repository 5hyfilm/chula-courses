dna = input().strip().upper()
operator = input().strip()

for e in dna :
    if e not in ['A', 'T', 'C', 'G'] :
        print('Invalid DNA')
        exit()

if operator == 'R':
    new_dna = []
    for i in range(len(dna)):
        if dna[i] == 'A':
            new_dna.append('T')
        elif dna[i] == 'T':
            new_dna.append('A')
        elif dna[i] == 'G':
            new_dna.append('C')
        elif dna[i] == 'C':
            new_dna.append('G')
    new_dna = new_dna[::-1]
    new_dna = ''.join(new_dna)
    print(new_dna)

elif operator == 'F':
    all_freq = [0, 0, 0, 0]
    for j in range(len(dna)):
        if dna[j] == 'A':
            all_freq[0] += 1
        if dna[j] == 'T':
            all_freq[1] += 1
        if dna[j] == 'G':
            all_freq[2] += 1
        if dna[j] == 'C':
            all_freq[3] += 1
    print('A='+str(all_freq[0])+',','T='+str(all_freq[1])+',','G='+str(all_freq[2])+',','C='+str(all_freq[3]))

elif operator == 'D':
    want = input().strip()
    count = 0
    for i in range(len(dna)-1) :
        if dna[i] + dna[i+1] == want:
            count += 1
    print(count)