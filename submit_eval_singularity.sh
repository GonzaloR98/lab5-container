#!/bin/bash

#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno31/lab5
#SBATCH -J Lab5
#SBATCH --output=RESULTADOS2.txt

module load singularity/3.8.0

echo "Evaluando el tiempo de ejecucion del programa k-mers en c++ para longitudes de 13 k-mers:"
echo
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./k-mer13

echo "Evaluando el tiempo de ejecucion del programa k-mers en c++ para longitudes de 14 k-mers:"
echo
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./k-mer14

echo "Evaluando el tiempo de ejecucion del programa k-mers en python para longitudes de 13 k-mers:"
echo
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./k-mer13.py

echo "Evaluando el tiempo de ejecucion del programa k-mers en python para longitudes de 14 k-mers:"
echo
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./k-mer14.py

module unload singularity/3.8.0
