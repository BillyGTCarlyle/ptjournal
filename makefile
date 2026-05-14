.POSIX:

PREFIX = /usr/local

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f notes $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/notes
	mkdir -p /usr/share/notes
	cp -f template /usr/share/notes/template

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/notes
	rm -rf /usr/share/notes

.PHONY: install uninstall
