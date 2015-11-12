#Este es el segundo aporte para braillinox y su automatización
#Un sistema embebido tiene un soporte de Advanced Linux Sound Architecture muy limitado por eso se va a automatizar 
#la instalación de dependencias usadas para ALSAMIXER
#Desarrollado por Héctor Méndez LABSOL y asociados en braillinox bajo GPLV3
#Esto se va a montar en Yocto-RPI-LABSOL

#!/bin/bash

echo "Alsa será instalado" #Sólo es necesario alsa ya que no es compatible con pulseaudio
echo "Se debe tener conexión a Internet" #sin internet nada servira
#Es recomendable correr este script desde el script maestro

#Adios pulseaudio
sudo apt-get purge libcanberra-pulse pulseaudio pulseaudio-esound-compat pulseaudio-module-bluetooth pulseaudio-module-gconf pulseaudio-module-udev pulseaudio-module-x11 gstreamer0.10-pulseaudio pulseaudio-utils pavucontrol


#Hola ALSA

sudo apt-get install -y mplayer
sudo apt-get install -y libasound2-dev
sudo apt-get install -y git
sudo apt-get install -y wget
sudo apt-get install -y linx
sudo apt-get install -y esound esound-clients esound-common
sudo apt-get install -y alsa-base alsa-tools alsa-utils alsa-oss
sudo apt-get install -y linux-sound-base python-alsaaudio libsdl1.2debian-alsa


cd #se van a ver varios cd, el motivo es porque base y pocket sphinx deben instalarse en directorios padre, en este caso el home


export LD_LIBRARY_PATH=/usr/local/lib
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
 
#Instalar sphinxbase y pocketsphinx

#GPLV3 "Gracias a la universidad de Carnegie Mellon, EUA, al Ing. Aldo Montes Alonso, Dr Arturo Nolazco
#sin ellos ni su trabajo hubiera sido imposible.

cd   ;   wget  http://downloads.sourceforge.net/project/cmusphinx/sphinxbase/0.8/sphinxbase-0.8.tar.gz
tar -xvf sphinxbase-0.8.tar.gz
cd sphinxbase-0.8
./configure
make
sudo make install

#instalar pocketsphinx
cd ; wget http://sourceforge.net/projects/cmusphinx/files/pocketsphinx/0.8/pocketsphinx-0.8.tar.gz
tar -xvf pocketsphinx-0.8.tar.gz
cd pocketsphinx-0.8
./configure
make
sudo make install

