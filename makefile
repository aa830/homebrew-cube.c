# Compiler and flags
CC = gcc
CFLAGS = -Wall -Wextra -std=c11 -lm

# Target executable
TARGET = render

# Source files
SRCS = cube.c

# Object files
OBJS = $(SRCS:.c=.o)

# Build the executable
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

# Compile source files into object files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up build files
clean:
	rm -f $(TARGET) $(OBJS)

# Run the program
run: $(TARGET)
	./$(TARGET)
