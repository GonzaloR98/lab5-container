#!/bin/bash

module load singularity/3.8.0

echo "La version del sistema operativo de la imagen es:" 
echo
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif cat /etc/os-release

echo "El contenido del directorio que estamos viendo es:"
echo
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ls -a

echo "El path del directorio que estamos viendo:"
echo
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif pwd

echo "La version de python que está instalada es:"
echo
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif python --version

echo "La version del compilador de C++ que tenemos instalada es:"
echo
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif g++ --version

echo "Ejecutando el archivo k-mer13 para C++ y midiendo su tiempo de ejecucion:"
echo
time ./k-mer13

module unload singularity/3.8.0