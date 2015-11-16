#Hallo, this is the first needes thing because for cross compile basesphinx, a gcc support is nedded
#An Embedded os, in mayority of cases does not have GCC, for raspberry Pi is installable.
#The instalation of the dependences used is simple, justm this scrip must have the correct permition and ./soportegcc.sh
#Developed by Héctor Méndez LABSOL and associates braillinox under GPLV3
#The scrips is just for a little time, because the future is monted GCC 5 with all things mounted in Yocto-RPI-LABSOL

#! /bin/bash
echo "The proces are going to start"
sudo apt-get update #because, if the system does not update, possible the base is not in the correct link 
sudo apt-get upgrade #if you don't have the necesity to upgrade, plase comment this line
#xtra devs GCC y G++ and dependences
sudo apt-get install -y gcc
sudo apt-get install -y g++
sudo apt-get install -y swig
sudo apt-get install -y gawk
sudo apt-get install -y libtool
sudo apt-get install -y make
sudo apt-get install -y bison
sudo apt-get install -y flex
sudo apt-get install -y automake
sudo apt-get install -y autoconf
sudo apt-get install -y gettext
sudo apt-get install -y m4

gcc --version   #in this part the gcc and g++ was update succesful. thanks for give review to my scripts
#if you have a fail or bad experiences with this script please make a coment at @ZAIFEHR on twitter.
