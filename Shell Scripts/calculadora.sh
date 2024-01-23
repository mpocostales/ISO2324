#!/bin/bash
# Autor: Mario Pocostales Osorio
# Fecha: 23-1-24

clear

echo "Autor Mario Pocostales Osorio"

if [ "$#" -ne 2 ]; then
    echo "Número incorrecto de argumentos. Deben ser 2."
    exit 1
else
    if [ -e "$1" ]; then
        echo "Este archivo ya existe."
        exit 1
    else
        i=1

        while [ $i -le $2 ]; do
            read -p "Operacion op1 op2: " operacion op1 op2

            case $operacion in
                M)
                    echo "Has escogido multiplicar"
                    resultado=$(($op1 * $op2))
                    echo "M $op1 $op2" >> "$1"
                    echo "$resultado"
                    ;;

                D)
                    echo "Has escogido dividir"
                    resultado1=$(($op1 / $op2))
                    echo "D $op1 $op2" >> "$1"
                    echo "$resultado1"
                    ;;

                S)
                    echo "Has escogido sumar"
                    resultado2=$(($op1 + $op2))
                    echo "S $op1 $op2" >> "$1"
                    echo "$resultado2"
                    ;;

                R)
                    echo "Has escogido restar"
                    resultado3=$(($op1 - $op2))
                    echo "R $op1 $op2" >> "$1"
                    echo "$resultado3"
                    ;;

                X)
                    echo "El bucle termina, saliendo"
                    exit
                    ;;

                *)
                    echo "Operación no válida"
                    exit 1
                    ;;
            esac
            i=$((i+1))
        done

        t=$(pwd)
        echo "$t/$1"
        cat "$1"
    fi
fi



	

