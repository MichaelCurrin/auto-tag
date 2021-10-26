# CLI help options.

test-helps:
	# HELP
	./autotag || true
	./autotag --help || true
	./autotag -h || true

# Run preview against this repo.

test-major:
	# MAJOR
	./autotag M --preview

test-minor:
	# MINOR
	./autotag m --preview

test-bug:
	# BUG
	./autotag b --preview

# Invalid inputs.

test-bad-flag:
	# BAD FLAG
	./autotag M -x || true
	./autotag M X || true

test-bad-level:
	# BAD LEVEL
	./autotag A || true

test: test-helps test-major test-minor test-bug test-bad-flag test-bad-level
