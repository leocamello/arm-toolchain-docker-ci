CC = gcc

default: build

build: main.out

main.out: main.c
	$(CC) -o main.out main.c

clean:
	rm -f main.out