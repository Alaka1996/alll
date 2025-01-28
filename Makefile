all:
        gcc -o main main.c
        cppcheck --enable=all main.c

clean:
        rm -f main
