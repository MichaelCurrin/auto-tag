all: test

h help:
	@grep '^[a-z]' Makefile


show-help:
	./autotag || true


test-helps:
	# HELP
	./autotag || true

	./autotag --help || true

	./autotag -h || true

test-major:
	# MAJOR
	./autotag M --preview

test-minor:
	# MINOR
	./autotag m --preview

test-bug:
	# BUG
	./autotag b --preview

test: test-helps test-major test-minor test-bug
