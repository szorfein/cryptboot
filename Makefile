PROGRAM_NAME=cryptboot
DESTDIR ?=

ifndef DESTDIR
	DESTDIR := /
endif

BIN_DIR=$(DESTDIR)usr/bin
CONF_DIR=$(DESTDIR)etc
DOC_DIR=$(DESTDIR)usr/share/doc

.PHONY: _all
_all:

install:
	install -Dm755 cryptboot $(BIN_DIR)/$(PROGRAM_NAME)
	install -Dm755 cryptboot-efikeys $(BIN_DIR)/$(PROGRAM_NAME)-efikeys
	install -Dm644 cryptboot.conf $(CONF_DIR)/cryptboot.conf
	install -Dm644 README.md $(DOC_DIR)/$(PROGRAM_NAME)/README.md

uninstall:
	rm -f $(BIN_DIR)/$(PROGRAM_NAME)
	rm -f $(BIN_DIR)/$(PROGRAM_NAME)-efikeys
	rm -f $(CONF_DIR)/cryptboot.conf
	rm -rf $(DOC_DIR)/$(PROGRAM_NAME)
