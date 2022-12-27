# this scripts downloads POSCAR and CONTCAR files from a remote server to your computer.
# make sure that you can login without password by placing ssh keys.

#!/bin/bash
A='/Users/abc/Zr'

for (( i=1; i<=18; i++ ))
do 
	B=`head -$i $A/dir | tail -1`
	C=`head -$i $A/dir | tail -1 | awk -F '/' '{print $1}'`
	scp username@hostname:/lfs/usrhome/Zr/$B/POSCAR /Users/abc/Zr/$C/
	scp username@hostname:/lfs/usrhome/Zr/$B/CONTCAR /Users/abc/Zr/$C/
done
