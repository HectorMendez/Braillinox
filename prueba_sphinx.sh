#! /bin/bash

echo se recibe $@
echo se recibe $@ >> /tmp/prueba_reconocimiento.log

for n in $(echo $@);
do

	case $n in
	ENCENDER) 	#ENCENDER
		encenedr.sh #sudo /etc/init.d/ledtest

	;;
	APAGAR)	#APAGAR
		apagar.sh #sudo /etc/init.d/ledtest1
	
	;;
	*)
		echo comando $n no reconocido

	;;
esac
done
############################################################
