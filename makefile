OBJECTS = main.o
CC = g++
DEBUG = -g
CFLAGS = -c $(DEBUG)  # compile flags
LFLAGS = $(DEBUG)  # link flags

hii : $(OBJECTS)
	$(CC) $(LFLAGS) $(OBJECTS) -o hii
main.o : main.cpp
	$(CC) $(CFLAGS) main.cpp

clean: rm *.o hii
