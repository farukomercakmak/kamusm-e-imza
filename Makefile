all: install

install:
	mkdir -p $(DESTDIR)/usr/share/KamuSM-eImza
	@cp KamuSM-eImza.jar $(DESTDIR)/usr/share/KamuSM-eImza/

	mkdir -p $(DESTDIR)/usr/share/applications
	@cp -rf KamuSM-eImza.desktop $(DESTDIR)/usr/share/applications/

	mkdir -p $(DESTDIR)/usr/share/tubitak-kamusm-e-imza
	@cp -rf icons $(DESTDIR)/usr/share/tubitak-kamusm-e-imza/

uninstall:
	@rm -rf /usr/share/KamuSM-eImza
	@rm -rf /usr/share/applications/KamuSM-eImza.desktop
	@rm -rf /usr/share/tubitak-kamusm-e-imza
.PHONY: install uninstall
