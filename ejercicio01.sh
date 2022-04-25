#!/bin/bash
clear

echo "Ingrese un nombre de carpeta a crear:"
read nombreCarpeta

if [[ ! -d $nombreCarpeta ]]; then
    mkdir $nombreCarpeta
    cd $nombreCarpeta
    for i in {1..40}; do
        touch texto$i.txt
    done
    echo "La carpeta $nombreCarpeta fue creada con exito!"

else
    echo "$nombreCarpeta existe o no es una carpeta."
fi
