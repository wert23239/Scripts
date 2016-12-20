#!/bin/bash -login
#PBS -l nodes=1:ppn=1,walltime=3:00:00
#PBS -l mem=2gb
#PBS -j oe
#PBS -t 000-999

cd quasiStrategy/
module swap GNU GNU/4.8.3
rep=0.01
my=0.01
./QS "$my" "$popSize" LOD_"$my"_"$popSize"_3_-++--+_"$PBS_ARRAYID".csv 3 -++--+
