# Compiler and flags
CC = gcc
CFLAGS = -Wall -Wextra

# Bison and Flex
BISON = bison
FLEX = flex

# Source files
BISON_SRC = par.y
FLEX_SRC = lex.l
LEX_OUTPUT = lex.yy.c
BISON_OUTPUT = par.tab.c par.tab.h

# Output executable
EXEC = parser

# Build the parser
all: $(EXEC)

# Generate Bison and Flex files and compile
$(EXEC): $(BISON_SRC) $(FLEX_SRC)
	@$(BISON) -d $(BISON_SRC)
	@$(FLEX) $(FLEX_SRC)
	@$(CC) $(CFLAGS) $(LEX_OUTPUT) $(BISON_OUTPUT) -o $(EXEC) -lfl

# Clean intermediate files but keep the executable
clean:
	@rm -f $(LEX_OUTPUT) $(BISON_OUTPUT)

# Clean everything, including the executable
cleanall: clean
	@rm -f $(EXEC)

# Default action
.PHONY: all clean cleanall

