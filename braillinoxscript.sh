#este sera el unico script que debas instalar los otros se instalan con este
#Idea, concepcion y dcumentacion (mal hecha y todo) pero 
#Hecho en su totalidad por Héctor Méndez con muchas ayudar de muchas personas
#Licenciadas bajo GPLv3

#Cuidar horario configurado
#cuidar region horaria con soporte actualizado
#que la instalacion se haga en un directorio padre.


#!/bin/bash
cd
./soportegcc.sh
echo "ya quedo gcc ahora a añadir el soporte de audio"
cd
./soporteaudio.sh
echo "al parecer el proceso ha terminado"
echo "ten cuidad pues este scriot sólo instala, no es disgnosticador de fallas"
echo "tampoco resuelve conflictos y descarga alrededor de 260mb"
echo "es necesario configurar tu internet bien para agilizar el proceso"
#Por lo pronto es esto
