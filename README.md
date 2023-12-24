# TLauncher Linux Installer
Shell scripts for downloading and installing last version of [TLauncher](https://tlauncher.org/) at Linux OS

# OS
  Successfuly tested on 
  - Ubuntu 20.04 LTS, KDE
  - Ubuntu 18.04 LTS, Gnome

# Requirements
Install these packages before install

- curl
- unzip
- openjdk-8-jre 
- openjfx

# Important!
TLauncher asks for root rights due to fact that if you run without root privileges,
then there are problems with the graphics (gpu)<br>
You may check README for more info [Download](https://tlauncher.org/jar)

# Install
 1. Download `TLauncher-Installer.zip` from [releases page](https://github.com/Korzinkayablok/TLauncer-Installer/releases/)
 2. unzip
 3. `cd TLauncer-Installer`<br> 
 4. `chmod a+x setup.sh`<br>
 5. If you only one java 8 version installed on your system run this command`./setup.sh` 
 <br>OR<br>
 Specify java 8 binary path using -j flag. Example `./setup.sh -j /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java`<br><br>
 On Ubuntu 20.04 you can get paths to all java bin by using this command: `update-alternatives --list java`

# Proxy
Use option `-p` in order to add use proxy during TLanuncher download `-p [protocol://]host[:port] Use this proxy` <br>
See `curl --help proxy` option name is `--proxy`

You can use `export https_proxy="place-your-proxy-here"` also

# Logs
You can check logs in dist derictory of installation path: /home/TLauncher-\*.\*/dist/TLauncher.out

# Contacts
Author: Ivaniv Anton 
<br>
Email: anton.o.ivaniv@gmail.com
