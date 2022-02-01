#############################################################################
# File name:  Makefile
# Author:     chadd williams
# Date:       Sept 1, 2021
# Class:      CS360
# Assignment: 
# Purpose:    
#############################################################################

all: bin bin/test bin/test.asm 

bin:
	mkdir -p bin

bin/test.asm: src/test.c
	gcc -o bin/test.asm -fverbose-asm -S src/test.c

bin/test: bin/test.o
	gcc -o bin/test -g -Wall bin/test.o

bin/test.o: bin src/test.c
	gcc -c -o bin/test.o -g -Wall src/test.c

valgrind: bin/test
	valgrind -v --leak-check=yes --track-origins=yes --leak-check=full --show-leak-kinds=all bin/test

printtest:
	enscript -C -T 2 -p - -M Letter -Ec --color -fCourier8 src/test.c  | ps2pdf - bin/test.pdf

clean:
	rm -f bin/test bin/*.o
