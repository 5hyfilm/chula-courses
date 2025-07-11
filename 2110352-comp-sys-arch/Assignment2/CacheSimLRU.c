/**
 * CacheSim.c 
 * This program is designed for class exercise only.
 * It is provided as is. There is no warranty or support of any kind.
 *
 * Krerk Piromsopa, Ph.D.
 * Department of Computer Engineering
 * Chulalongkorn University
 * Bangkok, Thailand.
 * 
 * History
 * 2013 - Initial design
 * 2015 - Refactor/Clean code
**/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "CacheSimAsso.h"

long MISS;
long HIT;

# define N 4
struct Cache cache[INDEX_SIZE][N];

int init() {
	MISS=0; HIT=0;
    for(int i=0;i<INDEX_SIZE;i++){
        for(int j=0;j<N;j++){
            cache[i][j].valid=0;
            cache[i][j].tag=0;
            cache[i][j].dirty=0;
            cache[i][j].lastuse=N;
        }
    }
}

int calAddr(unsigned long addr,unsigned long *tag,unsigned long *idx,unsigned long *offset) {
	unsigned long tmp;
	*tag=addr>>(OFFSETLEN+INDEXLEN);
	tmp=0;
	for(int i=0;i<INDEXLEN;i++) { tmp<<=1; tmp|=0x01; }
	*idx=addr>>OFFSETLEN & tmp;
	tmp=0;
	for(int i=0;i<OFFSETLEN;i++) { tmp<<=1; tmp|=0x01; }
	*offset=addr & tmp;
}

int access(unsigned long addr){
    unsigned long offset, tag, idx;
	calAddr(addr,&tag,&idx,&offset);

    int k=0;
    int found=0;
    
    for(int j=0;j<N;j++){
        if(cache[idx][j].tag==tag && cache[idx][j].valid){
            HIT++;
            found=1;
            k=j;
            cache[idx][j].lastuse=0;
            break;
        }
    }
	if(!found){
        MISS++;
        // find replace index
        int v=1;
        for(int j=0;j<N;j++)
            if(!cache[idx][j].valid){
                k=j; v=0; 
                break;
            }
        if(v)
            for(int j=1;j<N;j++)
                if(cache[idx][j].lastuse > cache[idx][j-1].lastuse)
                    k=j;

        // replace
        cache[idx][k].valid = 1;
        cache[idx][k].tag = tag;
        cache[idx][k].lastuse = 0;
	}

    // update lastuse
    for(int j=0;j<N;j++)
        if(j!=k && cache[idx][j].valid) cache[idx][j].lastuse+=1;

}

int main(int argc,char *argv[]){
    printf("CacheSim v.2015\nThis program is designed for class exercise only.\nBy Krerk Piromsopa, Ph.D.\n");
	init();
    FILE *input;
    char buff[1025];
    unsigned long myaddr;
    if (argc<2) {
		fprintf(stderr,"Usage:\n\t%s address_file\n",argv[0]);
		exit(-1);
	}
    input=fopen(argv[1],"r");
    //read file
    while (fgets(& buff[0],1024,input)) {
		sscanf(buff,"0x%x",&myaddr);
        access(myaddr);
    }
    printf("====LRU====\nCachesize:%d\n",X);
    printf("N: %d\n",N);
    printf("HIT: %7d\n",HIT);
    printf("MISS: %7d\n", MISS);
}
