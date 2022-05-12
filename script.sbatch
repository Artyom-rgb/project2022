#!/bin/bash
#SBATCH -N 1
#SBATCH -p RT
#SBATCH --ntasks-per-node=4
mkdir -p log/
mkdir -p rdf/
for temp in 0.5 1.0 1.5 2.0 2.5 3.0
do
	hostname
	sed "s/YYYYTEMP/$temp/g" in.colloid > in.colloid_for_run
	srun ~/bin/lmp_mpi -in in.colloid_for_run > log/log.lammps_$temp
	echo "Temp: ($temp) finished"
done
