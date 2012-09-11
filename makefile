CC=gcc

all:
	make coutarrete
	make coutmont
	make coutdesc

coutarrete: rk4.o coutarrete.o
	$(CC) -o coutarrete rk4.o coutarrete.o -lm

coutdesc: rk4.o coutarretedesc.o
	$(CC) -o coutdesc rk4.o coutarretedesc.o -lm

coutmont: rk4.o coutarretemont.o
	$(CC) -o coutmont rk4.o coutarretemont.o -lm


rk4.o: rk4.c 
	$(CC) -o rk4.o -c rk4.c 


coutarretedesc.o: coutarretedesc.c rk4.h
	$(CC) -o coutarretedesc.o -c coutarretedesc.c 

coutarrete.o: coutarrete.c rk4.h
	$(CC) -o coutarrete.o -c coutarrete.c 

coutarretemontc.o: coutarretemont.c rk4.h
	$(CC) -o coutarretemont.o -c coutarretemont.c 




clean:
	rm -f *.o
	rm -f coutarrete
	rm -f coutmont
	rm -f coutdesc