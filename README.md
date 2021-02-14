# kamusm-e-imza

https://nesbireysel.kamusm.gov.tr/nbimzali.go adresindeki KamuSM-eImza.jar(v1.3.2) dosyasının paket haline getirilme projesidir.

**Paketleme**

	sudo apt install build-essential git-buildpackage debhelper debmake

**Proje Kopyalama**

	git clone https://github.com/farukomercakmak/kamusm-e-imza.git
	cd kamusm-e-imza

**İnşa Bağımlılıklarını Yükleme**

	sudo mk-build-deps -ir

**Binary Paketini Alma**

	gbp buildpackage --git-export-dir=/tmp/build-area -b -us -uc

Build işlemi sonrası paket /tmp/build-area dizin yolundadır.


**Versiyon Yükseltme ve Etiketleme**

	gbp dch -Rc
	gbp buildpackage --git-tag-only

**Paketin Yüklenmesi**
	
	sudo dpkg -i /tmp/build-area/kamusm-e-imza*.deb

Bu işlemden sonra uygulamaya Pardus menüsünden erişebilirsiniz.
