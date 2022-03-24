## M300-Services - Plattformübergreifende Dienste in ein Netzwerk integrieren
# Apache2 Webserver



## Übersicht des Projekts

Apache2 Webserver 


### Inhaltsverzeichnis

* Umgebung
* Codebeschreib
* Fazit

## Umgebung

Vagrant 2.2.19 und VirtualBox 6.1 Umgebung mit Hostonly- und NAT-Netzwerkschnittstellen auf einem Windows Host:

- **Webserver: web-srv-01**
  - _Ubuntu Xenial64_
  - _Memory 1024MB_
  - _Apache2 webserver_
  - _IP & Port 192.168.3.101:80_
  - _NAT 8080 (für den Client Zugriff)_

## Codebeschreib
- **Webserver aufbauen:**
  - Folgende Prerequisites mussen installiert werden: debconf-utilsapache2, namp, php, libapache2-mod-php, php-curl, php-cli, php-gd. 
     - `sudo apt-get -y install debconf-utils apache2 nmap`
     - `sudo apt-get -y install php libapache2-mod-php php-curl php-cli php-gd `  
  - Als MySQL Client muss noch adminer installiert werden. Dies ist ein voll funktionsfähiges Datenbankverwaltungstool, das in PHP geschrieben ist.
     - `sudo wget "http://www.adminer.org/latest.php" -O /usr/share/adminer/latest.php`
  - Fixer DNS Eintrag für den DB Server im Hosts ergänzen.
     - `echo '127.0.0.1 localhost web-srv-01\n192.168.3.101 web-srv-01' > /etc/hosts`
  - Deklaration der benutzen Pakete:

<tab>    | <tab>
--------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------
**debconf-utilsapache2**   | Hilfsprogramme für Webserver und enthält einige, für jeden Webserver nützliche, Zusatzprogramme. 
**nmap**        | Ist ein Werkzeug um ein Netzwerk zu erkundigen mittels Ping, Portscaner und TCP/IP Fingerprinting.
**php**        | Serverseitige, in HTML eingebettete Mehrzweck-Skriptsprache.
**libapache2-mod-php** | Dieses Paket stellt des PHP-Modul für den Webserver Apache 2 bereit.
**php-curl** | Dieses Paket stellt ein CURL-Modul für PHP bereit.
**php-cli** | Dieses Paket stellt den Kommandozeilen-Interpreter PHP zur Verfügung, der für das Testen von PHP-Skripten in einer Shell oder auch für die Erledigung von Shell-Skripting-Aufgaben verwendet werden kann.

**php-gd** | Dieses Paket stellt ein GD-Modul für PHP bereit

 ### Einloggen über SSH
Es gibt noch die Möglichkeit die VM zu wechseln in der Bash:
- vagrant ssh **database**
- vagrant ssh **web**