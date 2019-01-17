CC = gcc

default: build

build: main.out

main.out: main.c
	$(CC) -o main.out main.c

test: run

run: main.out
	./main.out

clean:
	rm -f main.out