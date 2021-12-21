CC=gcc
FLAGS = -Wall -g

all: stringProg

stringProg: main.o 
	$(CC) $(FLAGS) -o stringProg mrk.o

main.o: mrk.c 
	$(CC) $(FLAGS) -c mrk.c

.PHONY: clean all

clean:
	rm -f *.o *.a *.so stringProg