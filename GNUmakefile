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
CMDS = add init git

.PHONY: build
build:  $(BLIB) $(addprefix $(BBINDIR)/hdnews-,$(CMDS))

$(BBINDIR)/hdnews-%: src/hdnews-cmd

	install -m755 -D $< $@

$(BLIBDIR)/hdnews-lib: src/hdnews-lib

	install -m755 -D $< $@

.PHONY: install
install: $(addprefix $(BINDIR)/hdnews-,$(CMDS))

	install -m755 $(BLIBDIR)/hdnews-lib $(LIBDIR)

$(BINDIR)/%:

	install -m755 $(BBINDIR)/$(@F) $(BINDIR)

.PHONY: clean
clean:

	$(RM) -r $(BROOTDIR)

.PHONY: check
check: build

	PATH="$(PWD)/$(BROOTDIR)/bin:$(PATH)" cram ${CRAMOPTS} cram
