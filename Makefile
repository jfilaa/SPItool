CFLAGS=-c -Wall -ggdb3 -Og
LDFLAGS= -ggdb3 -lpthread -Og
# build main executable when user executes "make"
main: main.o
	$(CC) $(LDFLAGS) main.o -o main -std=c99 -D _BSD_SOURCE
main.o: main.c
	$(CC) $(CFLAGS) -c main.c  -std=c99 -D _BSD_SOURCE

# remove object files and executable when user executes "make clean"
clean:
	rm *.o main
