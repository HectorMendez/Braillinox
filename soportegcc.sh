#Este es el primer aporte para braillinox y su automatización
#Un sistema embebido tiene un gcc muy limitado por eso se va a automatizar 
#la instalación de dependencias usadas para gcc
#Desarrollado por Héctor Méndez LABSOL y asociados en braillinox bajo GPLV3
#Esto se va a montar en Yocto-RPI-LABSOL

#! /bin/bash
echo "el proceso va a empezar"
sudo apt-get update #es una buena practica actualizar los repos antes de instalar 
sudo apt-get upgrade #es mucho mejor practica actualizar el sistema antes de instalar cosas nuevas
#Dependecias extra de GCC y G++ que son necesarias
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

gcc --version   #esta parte sólo es para ver que versión instaló, en realidad no es muy
#necesario ni el mundo muere si se elimina debe mostrar algo como gcc 4.8 o superior
echo "gracias por usar este script" #Héctor Méndez les agradece por usar este sencillo script
