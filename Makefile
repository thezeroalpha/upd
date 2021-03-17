prefix=/usr/local
datarootdir=$(prefix)/share
datadir=$(datarootdir)
exec_prefix=$(prefix)
bindir=$(exec_prefix)/bin
mandir=$(datarootdir)/man
man1dir=$(mandir)/man1

all:
	@echo  "Targets: install, uninstall, man"

install: upd upd.1.man
	cp upd $(bindir)/
	cp upd.1.man $(man1dir)/upd.1

uninstall:
	rm $(bindir)/upd
	rm $(man1dir)/upd.1
