# trim

Acts as a filter: takes stdin and outputs a trimmed version of the input.

Options to limit the trim are available (--start-line-only, --end-line-only)
and are summed up by ```trim --help``` command.


Install
-------

```make install```

Trim is a shell script and requires no specific dependancies.


Tests
-----

Running tests requires bats (package bats in Debian, sources at https://github.com/sstephenson/bats).

Run them with:
```make check```

