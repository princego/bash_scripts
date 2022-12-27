# this scripts downloads POSCAR and CONTCAR files from a remote server to your computer.
# make sure that you can login without password by placing ssh keys.

#!/bin/bash
A='/Users/abc/Hf'

for (( i=1; i<=13; i++ ))
do
    B=`head -$i $A/dir | tail -1`
    mkdir $B
    scp user@hostname:/lfs/usrhome/Hf/$B/POSCAR $A/$B/
    scp user@hostname:/lfs/usrhome/Hf/$B/CONTCAR $A/$B/
done


for (( i=14; i<=17; i++ ))
do
    B=`head -$i $A/dir | tail -1`
    C=`head -$i $A/dir | tail -1 | awk -F '/' '{print $1}'`
    mkdir $C
    scp user@hostname:/lfs/usrhome/Hf/$B/POSCAR $A/$C/
    scp user@hostname:/lfs/usrhome/Hf/$B/CONTCAR $A/$C/
done
