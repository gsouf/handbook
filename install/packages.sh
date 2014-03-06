#!/bin/sh

# multi sources informations : http://serverfault.com/a/382101/183260

echo "Pin: release l=Debian-Security\
Pin-Priority: 1000\
Package: *" > /etc/apt/preferences.d/security.pref

echo "Pin: release a=stable\
Pin-Priority: 995\
Package: *" > /etc/apt/preferences.d/stable.pref

echo "Package: *\
Pin: release a=testing\
Pin-Priority: 750" > /etc/apt/preferences.d/testing.pref

echo "Package: *\
Pin: release a=unstable\
Pin-Priority: 50" > /etc/apt/preferences.d/unstable.pref

echo "Package: *\
Pin: release a=experimental\
Pin-Priority: 1" > /etc/apt/preferences.d/experimental.pref


echo "deb     http://security.debian.org/         stable/updates  main contrib non-free\
deb     http://security.debian.org/         testing/updates main contrib non-free" > /etc/apt/sources.list.d/security.list

echo "deb     http://mirror.steadfast.net/debian/ stable main contrib non-free\
deb-src http://mirror.steadfast.net/debian/ stable main contrib non-free\
deb     http://ftp2.fr.debian.org/debian/    stable main contrib non-free\
deb-src http://ftp2.fr.debian.org/debian/    stable main contrib non-free" > /etc/apt/sources.list.d/stable.list

echo "deb     http://mirror.steadfast.net/debian/ testing main contrib non-free\
deb-src http://mirror.steadfast.net/debian/ testing main contrib non-free\
deb     http://ftp2.fr.debian.org/debian/    testing main contrib non-free\
deb-src http://ftp2.fr.debian.org/debian/    testing main contrib non-free" > /etc/apt/sources.list.d/testing.list

echo "deb     http://mirror.steadfast.net/debian/ unstable main contrib non-free\
deb-src http://mirror.steadfast.net/debian/ unstable main contrib non-free\
deb     http://ftp2.fr.debian.org/debian/    unstable main contrib non-free\
deb-src http://ftp2.fr.debian.org/debian/    unstable main contrib non-free" > /etc/apt/sources.list.d/unstable.list

echo "deb     http://mirror.steadfast.net/debian/ experimental main contrib non-free\
deb-src http://mirror.steadfast.net/debian/ experimental main contrib non-free\
deb     http://ftp2.fr.debian.org/debian/    experimental main contrib non-free\
deb-src http://ftp2.fr.debian.org/debian/    experimental main contrib non-free" > /etc/apt/sources.list.d/experimental.list


apt-get update
apt-get upgrade

