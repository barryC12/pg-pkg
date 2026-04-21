# Simple Makefile for pg (using prec-bin)

PREFIX = /usr
BINDIR = $(PREFIX)/bin
MANDIR = $(PREFIX)/share/man/man1

SRC_DIR = prec-bin

.PHONY: all install uninstall clean

all:
	@echo "Already compiled. Nothing to do."
	@echo "Run 'sudo make install' to install pg."

install:
	@echo "Installing pg..."
	install -Dm755 $(SRC_DIR)/pg $(BINDIR)/pg
	install -Dm644 $(SRC_DIR)/pg.1 $(MANDIR)/pg.1
	@gzip -f $(MANDIR)/pg.1
	@command -v mandb >/dev/null && mandb || true
	@echo "pg installed successfully."

uninstall:
	@echo "Removing pg..."
	rm -f $(BINDIR)/pg
	rm -f $(MANDIR)/pg.1.gz
	@command -v mandb >/dev/null && mandb || true
	@echo "pg removed."

clean:
	@echo "Nothing to clean."
	@echo "Run 'sudo make uninstall' to remove installed files."
