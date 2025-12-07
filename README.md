
# Libasm

This project involves rewriting a set of standard C library functions in x86_64 Assembly using the Intel syntax. The result is a static library, `libasm.a`, which can be linked to C programs to perform low-level memory and string operations.

## Overview

The library is built using NASM (Netwide Assembler) and is designed for Linux environments (ELF64). It interacts directly with the kernel using system calls for I/O operations and adheres to the calling conventions required for C function interop.

## Implemented Functions

The following functions have been implemented in assembly:

| Function | Description | Source File |
| :--- | :--- | :--- |
| **ft_strlen** | Calculates the length of a string. | `ft_strlen.s` |
| **ft_strcpy** | Copies a string from a source buffer to a destination buffer. | `ft_strcpy.s` |
| **ft_strcmp** | Compares two strings lexicographically. | `ft_strcmp.s` |
| **ft_write** | Writes to a file descriptor (wrapper for the `write` system call). | `ft_write.s` |
| **ft_read** | Reads from a file descriptor (wrapper for the `read` system call). | `ft_read.s` |
| **ft_strdup** | Duplicates a string by allocating memory using `malloc` and copying data. | `ft_strdup.s` |

## Requirements

* **OS**: Linux (Debian-based recommended for compatibility with the provided configuration)
* **Assembler**: NASM
* **Compiler**: GCC
* **Build Tool**: Make

## Usage

### Building the Library

Use the provided `Makefile` to compile the sources and generate the archive file.

```bash
make
```

This will produce `libasm.a`.

### Cleaning

To remove object files:

```bash
make clean
```

To remove object files and the library:

```bash
make fclean
```

To rebuild the project from scratch:

```bash
make re
```

### Testing

A main.c file is provided to verify the functionality of the assembly routines against standard C library behavior. To compile and run the tests:

```bash
make test
./test
```

## Docker Environment

To ensure a consistent development and testing environment, a Docker configuration is provided. This environment runs Debian Bullseye and includes all necessary build tools (NASM, GDB, GCC).

### Using the Builder Script

A helper script is available to build the image and start the container with the current directory mounted to `/app`:

```bash
./builder.sh
```

### Manual Docker Commands

Alternatively, you can build and run the container manually:

```bash
docker build -t libasm .
docker run -it -v $(pwd):/app libasm
```
