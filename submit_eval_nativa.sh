#!/bin/bash

#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno31/lab5
#SBATCH -J lab5
#SBATCH --output=RESULTADOS.txt

echo "Evaluando el tiempo de ejecucion del programa k-mers en c++ para longitudes de 13 k-mers:"
echo
time ./k-mer13

echo "Evaluando el tiempo de ejecucion del programa k-mers en c++ para longitudes de 14 k-mers:"
echo
time ./k-mer14

echo "Evaluando el tiempo de ejecucion del programa k-mers en python para longitudes de 13 k-mers:"
echo
time ./k-mer13.py

echo "Evaluando el tiempo de ejecucion del programa k-mers en python para longitudes de 14 k-mers:"
echo
time ./k-mer14.py



