#!/bin/bash
#Autor:Mario Pocostales Osorio
#Fecha:29-01-2024

clear

if [ $# -ne 2 ]; then
	echo "numero de parametros incorrectos"
	exit
fi

if [ -f $1 ]; then
	echo "el fichero ya existe"
	exit
fi

if [ ! -d $2 ]; then
	echo "el directorio no existe"
	exit
fi

fich=$(ls $2)
if [ -z $fich ]; then
	echo "Este directorio esta vacio"
	exit
fi

echo "Mario Pocostales Osorio"

ficheros=$( ls $2/*.txt)

for i in $ficheros; do

	if [ -f $i ]; then
		larchivo=$(cat $i | wc -l)
		if [ $larchivo -ge 5 ]; then
			#parte3
			echo $i
			echo $i >> $1
			#parte4
		palabras=$(cat $1 | wc -w)
		echo "el fichero tiene $palabras palabras" > $i.q
		cat $i > $i.q

		fi
	 fi
done

numero= $(cat $1 | wc -l)

echo $numero >> $1







