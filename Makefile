all: install

install: 
	mkdir -p $(DESTDIR)/usr/share/lider
	@cp -rf lider-console $(DESTDIR)/usr/share/lider/
	mkdir -p $(DESTDIR)/usr/share/lider/lider-console
	@cp -rf lider-console.png $(DESTDIR)/usr/share/lider/lider-console/
	mkdir -p $(DESTDIR)/usr/share/applications
	@cp -rf lider-console.desktop $(DESTDIR)/usr/share/applications/
	mkdir -p $(DESTDIR)/usr/bin
	@ln -s /usr/share/lider/lider-console/lider-console $(DESTDIR)/usr/bin/
uninstall:
	@rm -rf /usr/share/lider/lider-console
	@rm -rf /usr/share/applications/lider-console.desktop
	@rm -rf /usr/bin/lider-console
	

.PHONY: install uninstall