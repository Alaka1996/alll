CC = gcc
CFLAGS = -Wall -Wextra -std=c11
SRC = main.c

all: main

main: $(SRC)
	$(CC) $(CFLAGS) -o $@ $^

cppcheck:
	cppcheck --enable=all --inconclusive --std=c11 $(SRC)

clean:
	rm -f main
