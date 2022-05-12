#!/bin/bash
#SBATCH -N 1
###SBATCH --cpus-per-task=4 # OpenMP threads
#SBATCH --ntasks-per-node=4 # MPI process
#SBATCH --nodelist=node20-32
#SBATCH --partition=RT
#SBATCH --job-name=example_test
#SBATCH --comment="commnet for example"

srun ~/bin/lmp_mpi -in in.melt
