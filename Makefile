all:
        gcc -o myprogram main.c
        cppcheck --enable=all main.c

clean:
        rm -f main
