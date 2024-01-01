CC = g++  # Compiler
CFLAGS = -std=c++11 -Wall -Iinclude  # Compiler flags, including the 'include' directory
LDFLAGS = -Llib  # Linker flags
LIBS =  # Libraries if needed (e.g., -lmylib)

all: client server

client: src/client/client.cpp
	$(CC) $(CFLAGS) -o bin/client src/client/client.cpp $(LDFLAGS) $(LIBS)

# Find all .cpp files in server directory and subdirectories
SERVER_SOURCES := $(shell find src/server -type f -name '*.cpp')
ifeq ($(strip $(SERVER_SOURCES)),)  # Check if there are any source files
server:
	@echo "No source files found in src/server directory."
else
server: $(SERVER_SOURCES)
	$(CC) $(CFLAGS) -o bin/server $(SERVER_SOURCES) $(LDFLAGS) $(LIBS)
endif

clean:
	rm -f bin/client bin/server

.PHONY: all client server clean
