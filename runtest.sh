#!/bin/bash
# @Author: Jordi Corbilla
# @Description: Parallel MPI Matrix Multiplication (NxN)
for STEPS in 10 70 130 180 240; do
	for CPU in 3 5 7 9; do
		for TEST in 1 2 3 4 5 6; do
			mpiexec -f /home/pi/machinefile -n $CPU python ./matrixmultiplication.py $STEPS $STEPS >> logs/zero_master/$CPU/mpi.$STEPS.$TEST.log
		done			
	done
done
