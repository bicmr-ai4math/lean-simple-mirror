.DEFAULT_GOAL := all

.PHONY: all fmt build
all: fmt build

fmt:
	(alejandra -q .)
	(cd elan && cargo fmt)
	(cd mirror-clone && cargo fmt)

build:
	(cd elan && cargo build)
	(cd mirror-clone && cargo build)
