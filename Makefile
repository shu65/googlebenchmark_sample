CC ?= gcc
CXX ?= g++
CC_FLAGS= -std=c++0x -O3
LDLIBS	= -lbenchmark -lpthread

SAMPLE1_CPP_SRC=./src/sample1.cpp 
SAMPLE1_OBJS = $(SAMPLE1_CPP_SRC:%.cpp=%.o)
OBJES = $(SAMPLE1_OBJS)

.SUFFIXES:	.o

.PHONY: all
all:sample1

sample1: $(SAMPLE1_OBJS)
	$(CXX) -o $@ $(SAMPLE1_OBJS) $(LDFLAGS) $(LDLIBS)

.c.o:
	$(CC) -c $(CC_FLAGS) $< -o $@  $(INCLUDES)

.cpp.o:
	$(CXX) -c $(CC_FLAGS) $< -o $@  $(INCLUDES)



.PHONY: clean
clean:
	rm -f $(OBJES)
	rm -f samlep1
