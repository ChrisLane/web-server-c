default: all

all: build

run:
	./server 8088

clean:
	rm -rf server

.PHONY: default all run clean

build:
	gcc src/server.c -o server -D_POSIX_SOURCE -Wall -Werror -pedantic -std=c11 -D_GNU_SOURCE -lmagic
