# Compiler and flags
CC = gcc
CFLAGS = -Wall -Wextra -std=c11

# Target executable name
TARGET = sensor_app

# Source files
SRC = main.c

# Default target
all: $(TARGET)

# Build the target executable
$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

# Clean the build artifacts
clean:
	rm -f $(TARGET)

# Run the program
run: $(TARGET)
	./$(TARGET)
