ZIMBRA_PREFIX ?= /opt/zimbra

all:
	echo -n

install:
	mkdir -p $(DESTDIR)$(ZIMBRA_PREFIX)/jetty_base/webapps/zimbraAdmin/
	cp -R WebRoot/help $(DESTDIR)$(ZIMBRA_PREFIX)/jetty_base/webapps/zimbraAdmin/

clean:
	echo -n
