CFLAGS = -Wall

default: gcc regular
	@echo Building both versions

gcc: clean
	$(CC) $(CFLAGS) ngaro_gcc.c -o retro-gcc
	
regular: clean
	$(CC) $(CFLAGS) ngaro_regular.c -o retro-regular
	
clean:
	rm -f retro-gcc retro-regular
