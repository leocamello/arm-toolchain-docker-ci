CPU = cortex-m0plus
ARCH = thumb
SPECS = nosys.specs

CC = arm-none-eabi-gcc
TARGET = main.out
CFLAGS = -mcpu=$(CPU) -m$(ARCH) --specs=$(SPECS) -Wall

default: build

build: main.out

main.out: main.c
	$(CC) $(CFLAGS) -o $(TARGET) main.c

test: run

run: main.out
	./$(TARGET)

clean:
	rm -f $(TARGET)