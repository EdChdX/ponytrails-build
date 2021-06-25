#!/bin/bash
echo Removing legacy packages...
dpkg --purge kxstudio-repos-gcc5
echo Downloading KXStudio repository references...
curl -Lo kxstudio.deb "https://launchpad.net/~kxstudio-debian/+archive/kxstudio/+files/kxstudio-repos_10.0.3_all.deb"
echo Installing KXStudio references...
dpkg -i kxstudio.deb
echo Removing installation residues...
rm kxstudio.deb
echo Refreshing repositories with new packages...
apt update
echo Done.
exit
