.PHONY: default build install uninstall utop test clean

default: build

build:
	dune build

exec: build
	./_build/default/bin/main.exe

install:
	dune install

uninstall:
	dune uninstall

test:
	dune runtest -f

utop:
	dune utop lib

clean:
	dune clean
