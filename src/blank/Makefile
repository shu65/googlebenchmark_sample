CC ?= gcc
CXX ?= g++
CC_FLAGS= -std=c++0x -O3
LDLIBS	= -lbenchmark -lpthread

PROGRAM=blank
CPP_SRC=./main.cpp 
OBJS = $(CPP_SRC:%.cpp=%.o)

.SUFFIXES:	.o

.PHONY: all
all:$(PROGRAM)

$(PROGRAM): $(OBJS)
	$(CXX) -o $@ $(OBJS) $(LDFLAGS) $(LDLIBS)

.c.o:
	$(CC) -c $(CC_FLAGS) $< -o $@  $(INCLUDES)

.cpp.o:
	$(CXX) -c $(CC_FLAGS) $< -o $@  $(INCLUDES)



.PHONY: clean
clean:
	rm -f $(OBJS)
	rm -f $(PROGRAM)
