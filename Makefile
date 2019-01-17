CC = gcc
TARGET = main.out
CFLAGS = -o $(TARGET)

default: build

build: main.out

main.out: main.c
	$(CC) $(CFLAGS) main.c

test: run

run: main.out
	./$(TARGET)

clean:
	rm -f $(TARGET)