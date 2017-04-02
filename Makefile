CC ?= gcc
CXX ?= g++
CC_FLAGS= -std=c++0x -O3
LDLIBS	= -lbenchmark -lpthread

BASIC_CPP_SRC=./src/basic/main.cpp 
BASIC_OBJS = $(BASIC_CPP_SRC:%.cpp=%.o)

FIXTURES_CPP_SRC=./src/fixtures/main.cpp  
FIXTURES_OBJS = $(FIXTURES_CPP_SRC:%.cpp=%.o)

OBJES = $(BASIC_OBJS) \
	$(FIXTURES_OBJS)

.SUFFIXES:	.o

.PHONY: all
all:basic fixtures

basic: $(BASIC_OBJS)
	$(CXX) -o $@ $(BASIC_OBJS) $(LDFLAGS) $(LDLIBS)

fixtures: $(FIXTURES_OBJS)
	$(CXX) -o $@ $(FIXTURES_OBJS) $(LDFLAGS) $(LDLIBS)

.c.o:
	$(CC) -c $(CC_FLAGS) $< -o $@  $(INCLUDES)

.cpp.o:
	$(CXX) -c $(CC_FLAGS) $< -o $@  $(INCLUDES)



.PHONY: clean
clean:
	rm -f $(OBJES)
	rm -f ./basic ./fixtures
