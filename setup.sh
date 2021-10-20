#!/bin/bash

rm -f TLauncher.zip *.txt *.jar

curl https://tlauncher.org/jar -L --output TLauncher.zip
unzip TLauncher.zip
rm -f TLauncher.zip *.txt

TLauncherName=$(basename *.jar .jar)
TLauncherDir="$HOME/.local/share/${TLauncherName}"

rm -rf $TLauncherDir
mkdir $TLauncherDir
mkdir "$TLauncherDir/dist"

cp ./dist/TLauncher.png "$TLauncherDir/dist"
cp ./dist/TLauncher.sh "$TLauncherDir/dist"
cp ./dist/TLauncher.desktop $TLauncherDir
cp $TLauncherName.jar "$TLauncherDir/dist"

rm -f *.jar
cd "$TLauncherDir/dist"

sed -i 's|TLauncherRoot|'"$TLauncherDir"'/dist|g' ./TLauncher.sh
sed -i 's|TLauncherJarFile|'"$TLauncherName"'.jar|g' ./TLauncher.sh
chmod a+x TLauncher.sh
mv TLauncher.sh "${TLauncherName}.sh"

cd ..
sed -i 's|TLauncherRoot|'"$TLauncherDir"'/dist|g' ./TLauncher.desktop
sed -i 's|TLauncherName|'"$TLauncherName"'|g' ./TLauncher.desktop
chmod a+x TLauncher.desktop
mv TLauncher.desktop "${TLauncherName}.desktop"

rm -f "$HOME/.local/share/applications/${TLauncherName}.desktop"
cp "${TLauncherName}.desktop" "$HOME/.local/share/applications/"
chmod a+x "$HOME/.local/share/applications/${TLauncherName}.desktop"