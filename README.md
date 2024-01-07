# Server-Client Application with Hash Table

This C++ project implements a server-client application facilitating data manipulation using a hash table structure. The server manages a hash table that enables clients to perform operations like GET, SET, and DELETE on stored key-value pairs.

## Features

- **GET**: Retrieve a value associated with a provided key.
- **SET**: Store a key-value pair in the hash table.
- **DELETE**: Remove a key-value pair from the hash table.

## Usage

### Server
1. Compile and run the server application.
    ```bash
    make
    ./bin/server
    ```

2. The server initializes a hash table and listens for client requests.

### Client
1. Compile and run the client application.
    ```bash
    make
    ./bin/client
    ```

2. Connect the client to the server.
3. Use the following commands to interact with the server:
    - `get <key>`: Retrieve the value associated with the given key.
    - `set <key> <value>`: Set a key-value pair in the hash table.
    - `del <key>`: Remove the key-value pair from the hash table.

## Dependencies
- C++11 or higher
- Standard C++ libraries

## Folder Structure
- **src/server/**: Contains server-side code.
- **src/client/**: Contains client-side code.
- **include/**: Header files.
- **lib/**: Libraries if needed.
- **bin/**: Executable files.

## TODO

- potential memory leak from not freeing hash_table instance when stopping server
- write some test cases
- convert to pure c implementation be swapping vector arrays with dynamic c arrays and revert malloc and calloc.
- load file containing key value pairs