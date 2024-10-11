all: aztec

aztec: main.o Aztec.o
	g++ -g -Wall main.o Aztec.o -o aztec.elf

main.o: main.cpp
	g++ -g -Wall -c main.cpp

Aztec.o: Aztec.cpp Aztec.h
	g++ -g -Wall -c Aztec.cpp

clean:
	rm -rf -v *.o
	rm -rf -v *.gch

