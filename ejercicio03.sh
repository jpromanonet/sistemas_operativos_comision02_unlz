#!/bin/bash
clear

touch archivo.txt
for i in $(find Ejemplos -type f -name *3*.txt); do
    echo $i | cut -f 2 -d "/" | cut -f 1 -d "." >> archivo.txt
done
cd Ejemplos
for i in $(cat ../archivo.txt); do
    mv $i.txt $i.md
done
