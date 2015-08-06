
BIN := /usr/local/bin/lepra

install: RLWRAP-exists
	@echo "Creating symlink..."
	cp $(PWD)/lepra $(BIN)

uninstall:
	@echo "Removing symlink from $(BIN)"
	@rm $(BIN) 2> /dev/null || true

RLWRAP-exists: ; @which rlwrap > /dev/null
