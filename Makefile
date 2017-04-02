CC ?= gcc
CXX ?= g++

SUBDIRS := $(wildcard src/*/.)

all: $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C $@

.PHONY: all $(SUBDIRS)

