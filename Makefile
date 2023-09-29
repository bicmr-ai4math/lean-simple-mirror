.DEFAULT_GOAL := all

.PHONY: all fmt
all: fmt

fmt:
	(alejandra -q .)
	(cd elan && cargo fmt)
	(cd mirror-clone && cargo fmt)
