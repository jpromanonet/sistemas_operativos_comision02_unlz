#!/bin/bash
clear

sudo -s
touch archivos.txt
for i in $(find /etc -type f); do
    echo $i >> archivos.txt 2>/dev/null
done

mkdir Copias
cd Copias
for i in $(cat ../archivos.txt); do
    cp $i .
done
