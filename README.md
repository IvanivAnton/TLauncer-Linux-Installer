# 📘 TLauncher Linux Installer
Shell script for downloading and installing last version of [TLauncher](https://tlauncher.org/) on Linux OS.

## OS
Successfuly tested on:
  - Ubuntu 20.04 LTS, KDE
  - Ubuntu 18.04 LTS, Gnome

## Requirements
Install these packages before continuing further:
- `curl`
- `unzip`
- `openjdk-8-jre`
- `openjfx`

## Important!
TLauncher asks for root rights due to fact that if you run without root privileges,
there will be problems with the graphics (GPU).\
You may check the [TLauncher README](https://tlauncher.org/jar) for more info.

## Install
1.  Clone the repository and move to it:
```sh
git clone git@github.com:IvanivAnton/TLauncer-Linux-Installer.git
cd TLauncer-Linux-Installer
```
3. Give the root right to the script:
```sh
chmod a+x setup.sh
```
4. Execute the script. You will have to either:
    - Move the `.jar` file at the root of the repository, then execute `./setup.sh`
      OR
    - Specify java 8 binary path using the `-j` flag. Example:
      ```sh
      ./setup.sh -j /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java
      ```
      On `Ubuntu 20.04`, you can get paths to all java binaries by using this command: `update-alternatives --list java`.
<br>

⚠️ **Careful!** During the execution of `setup.py`, you will be prompted by `rm -rf` statements. Respond `y` if you want the file deleted, or `n` if not.

# Proxy
Use option `-p` in order to add use proxy during TLanuncher download `-p [protocol://]host[:port] Use this proxy`.\
See `curl --help proxy` option name is `--proxy`

You can also use `export https_proxy="place-your-proxy-here"`.

# Logs
You can check logs in the `dist/` directory of installation path: `/home/TLauncher-\*.\*/dist/TLauncher.out`

# Contacts
Author: Ivaniv Anton
<br>
Email: anton.o.ivaniv@gmail.com
