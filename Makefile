CC=gnatmake 
CFLAGS=

default: 
	$(CC) $(CFLAGS) scaffold.adb

clean: 
	rm -f *.o 
	rm -f *.ali
	rm -f scaffold
