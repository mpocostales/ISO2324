#!/bin/bash
#Autor:Mario Pocostales Osorio
#Fecha:02:02:2024

clear

if [ $# -gt 1 ]; then
	echo "numero incorrecto de parametros" 
	exit
fi


uidr=${1:-1000}

fecha=$(date +"%d-%m-%Y")
hora=$(date +"%H:%M")

echo "======================================================="
echo "Informe de usuarios el día $fecha a las $hora"


while IFS=: read -r nombre_usuario _ uid _; do
    if [ "$uid" -gt "$uidr" ]; then
        echo "$nombre_usuario – $uid"
    fi
done </etc/passwd
echo "======================================================="

echo "$fecha – $hora – El usuario $USER ha solicitado un informe de usuarios" >> /tmp/logeventos

