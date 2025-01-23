PREFIX ?= /usr
MANDIR ?= $(PREFIX)/share/man

default:
	@printf "targets:\n  make install\n  make uninstall\n"

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@install -Dm755 hfetch $(DESTDIR)$(PREFIX)/bin/hfetch
	@mkdir -p $(DESTDIR)$(MANDIR)/man1
	@cp -p hfetch.1 $(DESTDIR)$(MANDIR)/man1

uninstall:
	@rm -f $(DESTDIR)$(PREFIX)/bin/hfetch
	@rm -rf $(DESTDIR)$(MANDIR)/man1/hfetch.1*
