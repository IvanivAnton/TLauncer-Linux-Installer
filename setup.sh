#!/bin/bash

Java8Path=java
proxy=""
while getopts ":jp:" option; do
    case ${option} in
        j) # java custom binary
            Java8Path=${OPTARG}
            ;;
        p) # proxy option
            proxy=${OPTARG}
            ;;
        \?) # Invalid option
            echo "Error: Invalid option"
            exit;;
    esac
done

curl https://tlauncher.org/jar -L --output TLauncher.zip --proxy "${proxy}"
unzip -o TLauncher.zip
rm -fi TLauncher.zip README-EN.txt README-RUS.txt

TLauncherName=$(basename *.jar .jar)
TLauncherDir="$HOME/${TLauncherName}"
TLauncherDist="$TLauncherDir/dist"
TLauncherLogFileName="TLauncher.out"

rm -rfi $TLauncherDir
mkdir $TLauncherDir
mkdir "$TLauncherDir/dist"

cp ./dist/TLauncher.png "$TLauncherDir/dist"
cp ./dist/TLauncher.sh "$TLauncherDir/dist"
cp ./dist/TLauncher.desktop $TLauncherDir
cp $TLauncherName.jar "$TLauncherDir/dist"

rm -fi *.jar
cd "$TLauncherDir/dist"
touch ${TLauncherLogFileName}

sed -i 's|TLauncherRoot|'"$TLauncherDir"'/dist|g' ./TLauncher.sh
sed -i 's|TLauncherJarFile|'"$TLauncherName"'.jar|g' ./TLauncher.sh
sed -i 's|TLauncherDist|'"$TLauncherDist"'|g' ./TLauncher.sh
sed -i 's|TLauncher.out|'"$TLauncherLogFileName"'|g' ./TLauncher.sh
sed -i 's|java|'"$Java8Path"'|g' ./TLauncher.sh
chmod a+x TLauncher.sh
mv TLauncher.sh "${TLauncherName}.sh"

cd ..
sed -i 's|TLauncherRoot|'"$TLauncherDir"'/dist|g' ./TLauncher.desktop
sed -i 's|TLauncherName|'"$TLauncherName"'|g' ./TLauncher.desktop
chmod a+x TLauncher.desktop
mv TLauncher.desktop "${TLauncherName}.desktop"

rm -fi "$HOME/.local/share/applications/${TLauncherName}.desktop"
cp "${TLauncherName}.desktop" "$HOME/.local/share/applications/"
chmod a+x "$HOME/.local/share/applications/${TLauncherName}.desktop"
