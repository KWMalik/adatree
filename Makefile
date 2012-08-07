CC=gnatmake 
CFLAGS=

default: 
	$(CC) $(CFLAGS) btree.adb

clean: 
	rm -f *.o 
	rm -f *.ali
	rm -f btree
