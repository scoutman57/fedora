#!/bin/bash   
rpm -qa|grep jredelete that dumb floating folder window
and i right click the menu and "classic style"
su root
vi /etc/sudoers # Set sudo users / enable no passwords

yum update

yum groupinstall 'KDE Plasma Workspaces'
yum groupinstall 'System Tools'
yum groupinstall 'Administration Tools'
yum groupinstall 'Development Tools'
yum groupinstall 'Development and Creative Workstation'
yum groupinstall 'Sound and Video'

yum install rfkill

yum install alsa-lib.i686 libXv.i686 libXScrnSaver.i686 qt.i686 qt-x11.i686 pulseaudio-libs.i686 pulseaudio-libs-glib2.i686 alsa-plugins-pulseaudio.i686 qtwebkit.i686

#remove all the fake java
rpm -qa|grep java
yum remove java

# Install Oracle Java
yum install http://download.oracle.com/otn-pub/java/jdk/7u45-b18/jdk-7u45-linux-x64.rpm

alternatives --install /usr/bin/java java /usr/java/latest/jre/bin/java 20000
alternatives --install /usr/bin/javaws javaws /usr/java/latest/jre/bin/javaws 20000
alternatives --install /usr/lib64/mozilla/plugins/libjavaplugin.so libjavaplugin.so.x86_64 /usr/java/latest/jre/lib/amd64/libnpjp2.so 20000
alternatives --install /usr/bin/javac javac /usr/java/latest/bin/javac 20000
alternatives --install /usr/bin/jar jar /usr/java/latest/bin/jar 20000
alternatives --config java
alternatives --config javaws
alternatives --config libjavaplugin.so.x86_64
alternatives --config javac
vi /etc/profile # add -> export JAVA_HOME=”/usr/java/latest”

# Install Browsers
yum install firefox
yum install google-chrome-stable

yum install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-stable.noarch.rpm
yum install mixxx

#install Skype
yum install http://download.skype.com/linux/skype-4.2.0.11-fedora.i586.rpm

# Install Virtualbox
yum install http://download.virtualbox.org/virtualbox/4.3.4/VirtualBox-4.3-4.3.4_91027_fedora18-1.x86_64.rpm
usermod -a -G vboxusers swarren

# Install Vagrant
yum install https://dl.bintray.com/mitchellh/vagrant/vagrant_1.4.0_x86_64.rpm

chgrp -R apache /var/www/html
chmod -R g+w /var/www/html
chmod g+s /var/www/html
