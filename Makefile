help:
	@echo "Available targets: check, install, uninstall"

check:
	bats tests/tests.bats

install:
	cp trim /usr/local/bin
	chmod a+x /usr/local/bin/trim

uninstall:
	rm /usr/local/bin/trim

