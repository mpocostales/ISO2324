#!/bin/bash
# Autor: Mario Pocostales Osorio
# Fecha: 17/01/2024

while true; do
    clear

    echo "a-Añadir una entrada"
    echo "b-Buscar por DNI"
    echo "c-Ver la agenda completa"
    echo "d-Eliminar todas las entradas de la agenda"
    echo "e-Finalizar"

    read -p "Selecciona una opción: " opcion

    case $opcion in
        a)
            echo "Has seleccionado añadir una entrada"
            read -p "Introduce DNI: " dni
            if grep -q "^$dni" agenda.txt; then
                echo "El usuario con ese DNI ya está dado de alta"
                read -p "Presiona Enter para continuar..."
            else
                read -p "Introduce nombre: " nombre
                read -p "Introduce apellidos: " apellidos
                read -p "Introduce localidad: " localidad
                echo "$dni:$nombre:$apellidos:$localidad" >> agenda.txt
                echo "Entrada añadida correctamente"
                read -p "Presiona Enter para continuar..."
            fi
            ;;
        b)
            echo "Has seleccionado buscar por DNI"
            read -p "Introduce DNI: " dni2
            if grep "^$dni2" agenda.txt 2> /dev/null; then
                nombre=$(grep "^$dni2" agenda.txt | cut -d ":" -f 2)
                apellidos=$(grep "^$dni2" agenda.txt | cut -d ":" -f 3)
                localidad=$(grep "^$dni2" agenda.txt | cut -d ":" -f 4)
                echo "La persona con DNI número $dni2 es: $nombre $apellidos, y vive en $localidad"
            else
                echo "No encontrado"
            fi
            read -p "Presiona Enter para continuar..."
            ;;
        c)
            echo "Has seleccionado ver la agenda completa"
            if [ -s agenda.txt ]; then
                cat agenda.txt
            else
                echo "Agenda vacía"
            fi
            read -p "Presiona Enter para continuar..."
            ;;
        d)
            echo "Has seleccionado eliminar todas las entradas de la agenda"
            echo -n > agenda.txt
            echo "Entradas eliminadas correctamente"
            read -p "Presiona Enter para continuar..."
            ;;
        e)
            echo "Has seleccionado finalizar"
            exit
            ;;
        *)
            echo "Opción no válida"
            read -p "Presiona Enter para continuar..."
            ;;
    esac
done

