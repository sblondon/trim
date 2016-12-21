help:
	@echo "Available targets: check, install, uninstall"

check:
	bats tests/tests.bats

install:
	cp trim /usr/local/bin
	chmod a+x /usr/local/bin/trim
	mkdir --parent /usr/local/man/man1
	gzip -c man/trim.1 > trim.1.gz
	mv trim.1.gz /usr/local/man/man1/

uninstall:
	rm /usr/local/bin/trim
	rm /usr/local/man/man1/trim.1.gz

