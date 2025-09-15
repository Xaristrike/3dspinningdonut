PROJECT_NAME	= donut
SRC		= donut.c
CC		= gcc
CFLAGS		= -Wall -Werror -Wpedantic
LNKFLAGS	= -lm

.PHONY: default
default: all

.PHONY: all
all: clean $(PROJECT_NAME)

.PHONY: $(PROJECT_NAME)
$(PROJECT_NAME): $(SRC)
	@$(CC) $(CFLAGS) -o $(PROJECT_NAME) $(SRC) $(LNKFLAGS)
	@./$(PROJECT_NAME)

.PHONY: clean
clean:
	@rm -f $(PROJECT_NAME)