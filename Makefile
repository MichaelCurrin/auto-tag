all: run-help major minor bug


run-help:
	# HELP
	./autotag || true

	./autotag --help || true

	./autotag -h || true

major:
	# MAJOR
	./autotag M --preview

minor:
	# MINOR
	./autotag m --preview

bug:
	# BUG
	./autotag b --preview
