#LiderArayüz

LiderAhenk Merkezi Yönetim Sistemi yönetim aracı olan **LiderArayüz** bileşeninin, debian paketi haline getirme adımlarını içermektedir.

Build işlemi için aşağıdaki paketler yüklenmelidir;

	sudo apt install build-essential git-buildpackage debhelper debmake

Daha sonra proje indirilerek;

	git clone https://github.com/Pardus-LiderAhenk/lider-console-deb.git
	cd lider-console-deb/
	sudo mk-build-deps -ir

git-buildpackage bağımlılıkları kurulur.

	gbp buildpackage --git-export-dir=/tmp/build-area -b -us -uc

Yukarıdaki adımdan sonra **/tmp/build-area/** dizini altına **lider-console_1.1_all.deb** debian paketi oluşmaktadır.

	sudo dpkg -i lider-console_1.1_all.deb

komutu ile sisteme kurulur. Uygulamalar menüsünden veya uçbirimden **"lider-console"** olarak aratılarak çalıştırılabilir.
