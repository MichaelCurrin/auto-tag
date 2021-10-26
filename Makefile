include tests.mk

default: help

all: test

h help:
	@grep '^[a-z]' Makefile
	@grep '^[a-z]' tests.mk


tool-help:
	./autotag || true
