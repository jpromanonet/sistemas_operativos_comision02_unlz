#!/bin/bash
clear

cd Ejemplos
echo "Ingrese un nombre de archivo comprimido a crear:"
read nombreArchivo
if [[ ! -f $nombreArchivo ]]; then
    tar -czf $nombreArchivo texto25.txt texto29.txt
    echo "Archivo comprimido creado con exito!"
else
    echo "$nombreArchivo existe o no es una archivo."
fi
