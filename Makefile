CC = gcc
CFLAGS = -Wall -Wextra -std=c11
SRC_DIR = src
SOURCES = $(SRC_DIR)/main.c
TARGET = main

all: $(TARGET)

$(TARGET): $(SOURCES)
	$(CC) $(CFLAGS) -o $@ $^

cppcheck:
	cppcheck --enable=all --inconclusive --std=c11 --template="{file}:{line}: {severity}: {message}" $(SOURCES)

clean:
	rm -f $(TARGET)