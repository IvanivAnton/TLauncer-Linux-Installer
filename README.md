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
<br>


# Important!
TLauncher asks for root rights due to fact that if you run without root privileges,
then there are problems with the graphics (gpu)

# Install
 1. Download release from [releases page](https://github.com/Korzinkayablok/TLauncer-Installer/releases/)
 2. unzip
 3. `cd TLauncer-Installer-*.*.*`<br> 
 4. `chmod a+x setup.sh`<br>
 5. If you only one java 8 version installed on your system run this command`./setup.sh` 
 <br>OR<br>
 5. Specify java 8 binary path using -j flag. Example `./setup.sh -j /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java`<br> 
    On Ubuntu 20.04 you can get paths to all java bin by using this command: `update-alternatives --list java`

# Logs
You can check logs in dist derictory of installation path: /home/TLauncher-\*.\*/dist/TLauncher.out

# Contacts
Author: Ivaniv Anton 
<br>
Email: anton.o.ivaniv@gmail.com
