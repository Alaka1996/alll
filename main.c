#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_BUFFER_SIZE 10

int main() {
    char buffer[MAX_BUFFER_SIZE];

    // Example of potential buffer overflow
    fgets(buffer, MAX_BUFFER_SIZE, stdin); 

    // Example of potential memory allocation issue
    int *data = (int*)malloc(sizeof(int) * 0); // Allocate zero bytes

    if (data == NULL) {
        fprintf(stderr, "Memory allocation failed.\n");
        return 1;
    }

    // Use the allocated memory (this will likely cause a crash)
    *data = 42;

    free(data); 

    return 0;
}
