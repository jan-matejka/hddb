.DEFAULT_GOAL := build
CXX ?= c++
CRAMOPTS ?=

PREFIX ?= /usr/local
LIBDIR ?= $(DESTDIR)$(PREFIX)/lib
BINDIR ?= $(DESTDIR)$(PREFIX)/bin

BROOTDIR = _build
BLIBDIR  = $(BROOTDIR)/lib
BBINDIR  = $(BROOTDIR)/bin

DIRS = $(BLIBDIR) $(BBINDIR)

BLIB = $(BLIBDIR)/hdnews-lib
CMDS = add init

.PHONY: build
build:  $(BLIB) $(addprefix $(BBINDIR)/hdnews-,$(CMDS))

$(BBINDIR)/hdnews-%: src/hdnews-cmd

	install -m755 -D $< $@

$(BLIBDIR)/hdnews-lib: src/hdnews-lib

	install -m755 -D $< $@

.PHONY: install
install:

	install -m755 $(BLIBDIR)/hdnews-lib $(LIBDIR)
	install -m755 $(BBINDIR)/hdnews-add $(BINDIR)
	install -m755 $(BBINDIR)/hdnews-init $(BINDIR)

.PHONY: clean
clean:

	$(RM) -r $(BROOTDIR)

.PHONY: check
check: build

	PATH="$(PWD)/$(BROOTDIR)/bin:$(PATH)" cram ${CRAMOPTS} cram
