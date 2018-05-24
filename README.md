# LiderArayüz

## Paketin İnşa Edilmesi

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

## LiderAhenk Deposunun Sisteme Eklenmesi

LiderAhenk bileşenleri ve eklentileri "repo.liderahenk.org" adresinde sunulmaktadır. Pardus bilgisayarlarda bu adres tanımlanarak tüm eklentiler depodan yüklenebilmektedir. Bu deponun sisteminize tanımlanması için uçbirim(konsol)da;

	sudo wget http://repo.liderahenk.org/liderahenk-archive-keyring.asc && sudo apt-key add liderahenk-archive-keyring.asc &&  rm liderahenk-archive-keyring.asc

komutları ile "liderahenk-archive-keyring.asc" key dosyası indirilerek sisteme yüklenmelidir. Ardından;

	sudo add-apt-repository 'deb [arch=amd64] http://repo.liderahenk.org/liderahenk stable main'

komutu ile depo adresi "/etc/apt/sources.list" dosyasına eklenir. 

*NOT: Bu adımı uçbirimde ;*

	printf  "deb [arch=amd64] http://repo.liderahenk.org/liderahenk stable main" | sudo tee -a /etc/apt/sources.list

*komutu ile de yapabilirsiniz.*

Daha sonra;

	sudo apt update

komutu ile güncel paket listesini alınmalıdır. 

## Paketin Depodan Sisteme Yüklenmesi-Kaldırılması

Uçbirimde;

	sudo apt install lider-console -y

komutu ile paket yükleyebilir;

	sudo apt remove lider-console -y

komutu ile sistemden kaldırılabilir.
